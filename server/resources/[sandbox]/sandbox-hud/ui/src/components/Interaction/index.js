// Import the circular menu

import React from 'react';
import PieMenu, { background, Slice } from 'react-pie-menu';
import { Fade, useTheme } from '@mui/material';
import { makeStyles } from '@mui/styles';
import { useSelector } from 'react-redux';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { css, ThemeProvider } from 'styled-components';
import Nui from '../../util/Nui';
import useKeypress from 'react-use-keypress';
import { debounce } from 'lodash';

const useStyles = makeStyles((theme) => ({
    div: {
        position: 'absolute',
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        margin: 'auto',
        display: 'flex',
        width: '100vw',
        height: '100vh',
        alignItems: 'center',
        justifyContent: 'center',
        '-webkit-font-smoothing': 'subpixel-antialiased',
    },
    slice: {
        cursor: 'pointer',
    },
    label: {
        fontSize: '0.75rem',
    },
    back: {
        position: 'absolute',
        fontSize: '2rem',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        left: 0,
        top: 0,
        bottom: 0,
        right: 0,
        margin: 'auto',
        width: 124,
        height: 124,
        borderRadius: '50%',
        background: `${theme.palette.secondary.dark}80`,
        cursor: 'pointer',
        border: `4px solid ${theme.palette.primary.main}`,
        transition: 'background 0.2s ease-out, color 0.15s ease-in',
        '&:hover': {
            background: `${theme.palette.secondary.dark}c9`,
            color: theme.palette.primary.main,
        },
    },
}));

const Interaction = () => {
    const classes = useStyles();
    const theme = useTheme();
    const showing = useSelector((state) => state.interaction.show);

    const pieTheme = {
        slice: {
            container: css`
                color: white;
                ${background(`${theme.palette.secondary.dark}80`)};
                z-index: 1;
                -webkit-font-smoothing: subpixel-antialiased;
                transition: color 0.15s ease-in;

                &::before {
                    position: absolute;
                    content: '';
                    top: 0;
                    right: 0;
                    bottom: 0;
                    left: 0;
                    z-index: -1;
                    ${background(`${theme.palette.secondary.dark}`)}
                    transition: opacity 0.2s ease-out;
                    opacity: 0;
                }

                &:hover,
                &[_highlight='true'] {
                    ${background(`${theme.palette.secondary.dark}c9`)};
                    color: ${theme.palette.primary.main};
                }

                &:hover::before {
                    opacity: 1;
                }
            `,
            contentContainer: css`
                font-size: 0.75rem;
            `,
        },
    };

    useKeypress(['F1', 'Escape'], () => {
        if (!showing) return;
        else Nui.send('Interaction:Hide');
    });

    const menuItems = useSelector((state) => state.interaction.menuItems);
    const layer = useSelector((state) => state.interaction.layer);

    //Yes this is stupid, i dont know why the lib fires onClick twice?
    const trigger = debounce(function (item) {
        Nui.send('Interaction:Trigger', item);
    }, 0);

    const back = async () => {
        if (layer === 0) return await Nui.send('Interaction:Hide');
        await Nui.send('Interaction:Back');
    };

    const genItems = () => {
        return menuItems
            .sort((a, b) => (a.id < b.id ? -1 : a.id > b.id ? 1 : 0))
            .map((item) => {
                return (
                    <Slice
                        key={item.id}
                        className={classes.slice}
                        onSelect={() => {
                            trigger(item);
                        }}
                    >
                        {item.label && (
                            <div>
                                <span className={classes.label}>
                                    {item.label}
                                </span>
                            </div>
                        )}
                        <FontAwesomeIcon
                            icon={item.icon ?? 'question'}
                            size="2x"
                        />
                    </Slice>
                );
            });
    };

    return (
        <Fade in={showing} duration={2500}>
            <div className={classes.div}>
                <ThemeProvider theme={pieTheme}>
                    <PieMenu radius="250px" centerRadius="62px">
                        {genItems()}
                    </PieMenu>
                    <div className={classes.back} onClick={back}>
                        {layer === 0 && (
                            <FontAwesomeIcon icon={'circle-xmark'} />
                        )}
                        {layer !== 0 && (
                            <FontAwesomeIcon icon={'circle-arrow-left'} />
                        )}
                    </div>
                </ThemeProvider>
            </div>
        </Fade>
    );
};
export default Interaction;
