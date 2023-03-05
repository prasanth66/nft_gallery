import classnames from "classnames";
import Image from "next/image";
import PropTypes from "prop-types";
import React from "react";
import { useState } from "react";

const buttonStyles = {
    primary: "primary",
    ghost: "ghost",
    borderLess: "borderLess",
    link: "link",
};

const sizes = {
    extraSmall: "extraSmall",
    small: "small",
    medium: "medium",
    large: "large",
};

const iconPositions = { left: "left", right: "right" };

const Button = ({
    icon = null,
    iconPosition = "",
    label = "",
    onClick = () => {},
    type = "button",
    style = buttonStyles.primary,
    fullWidth = false,
    className = "",
    disabled = false,
    size = sizes.medium,
    href = "",
    isLoading = false,
    loaderColor = "",
    loaderSize = "",
    btnRadius = "rounded",
    fontWeight,
    fontSize,
    fontColor,
    btnClass,
}) => {
    let modifiedSize = size;

    if (style === buttonStyles.link) {
        modifiedSize = "p-0";
    }

    return (
        <button
            type={type}
            href={href}
            onClick={onClick}
            className={classnames(
                [className],
                "flex items-center disabled:bg-primary-100 disabled:text-primary-300 disabled:outline-none transform transition-transform active:scale-90 duration-300",
                `${btnRadius} ${fontWeight} ${fontSize} ${fontColor} ${btnClass}`,
                {
                    "py-4 px-8 text-xl font-semibold leading-7": size === sizes.large && style !== buttonStyles.link,
                    "py-3.5 px-8 text-base font-semibold leading-6": size === sizes.medium && style !== buttonStyles.link,
                    "py-3 px-6 text-sm font-semibold leading-5": size === sizes.small && style !== buttonStyles.link,
                    "py-2 px-6 text-sm font-semibold leading-5": size === sizes.extraSmall && style !== buttonStyles.link,
                    "p-4": size === sizes.iconLarge && style !== buttonStyles.link,
                    "p-3": size === sizes.iconMedium && style !== buttonStyles.link,
                    "p-2": size === sizes.iconSmall && style !== buttonStyles.link,
                    "p-2": size === sizes.iconExtraSmall && style !== buttonStyles.link,
                    "p-0 text-base": size === sizes.large && style === buttonStyles.link,
                    "p-0 text-sm": size === sizes.medium && style === buttonStyles.link,
                    "p-0 text-sm": size === sizes.small && style === buttonStyles.link,
                    "p-0 text-xs": size === sizes.extraSmall && style === buttonStyles.link,
                    "w-full": fullWidth,
                    "bg-primary-900 text-white hover:bg-primary-800 focus:bg-primary-800 active:bg-primary-800 visited:bg-primary-800": style === buttonStyles.primary,
                    "text-primary-900 outline outline-1 outline-primary-800 hover:bg-primary-50 focus:bg-primary-50 focus:outline-2 active:bg-primary-200 visited:bg-primary-200":
                        style === buttonStyles.ghost,
                    "text-primary-900 hover:text-primary-800 focus:text-primary-800 hover:bg-primary-100 focus:bg-primary-100 focus:outline focus:outline-primary-800 focus:outline-2 active:bg-primary-200 visited:bg-primary-200":
                        style === buttonStyles.borderLess,
                    "text-primary-900 text-sm outline-0 hover:underline focus:underline active:underline hover:text-primary-800 hover:after:bg-primary-800 focus:text-primary-800  focus:after:bg-primary-800 active:text-primary-800 active:after:bg-primary-800 disabled:bg-transparent disabled:after:bg-primary-300":
                        style === buttonStyles.link,
                    "flex items-center flex-row-reverse space-x-reverse space-x-2": iconPosition == iconPositions.left,
                    "flex items-center flex-row space-x-2": iconPosition == iconPositions.right,
                    "justify-center": icon === null,
                }
            )}
            disabled={disabled}
        >
            {label && <span className={icon && classnames([className])}> {label} </span>}

            {isLoading ? (
                <svg
                    className={`${loaderSize ? loaderSize : "w-5 h-5"} mr-3 -ml-1 ${loaderColor ? loaderColor : "text-white"} animate-spin`}
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                >
                    <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                    <path
                        className="opacity-75"
                        fill="currentColor"
                        d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                    ></path>
                </svg>
            ) : (
                ""
            )}

            {!isLoading && icon && iconPosition ? (
                <Image
                    src={icon}
                    width={10}
                    height={10}
                    alt="icon"
                    className={classnames([className], {
                        "w-4": size === sizes.extraSmall,
                        "w-4": size === sizes.small,
                        "w-6": size === sizes.medium,
                        "w-6": size === sizes.large,
                        "w-4": size === sizes.iconExtraSmall,
                        "w-6": size === sizes.iconSmall,
                        "w-6": size === sizes.iconMedium,
                        "w-6": size === sizes.iconLarge,
                    })}
                />
            ) : (
                <></>
            )}
        </button>
    );
};

Button.propTypes = {
    style: PropTypes.oneOf(Object.values(buttonStyles)),
    size: PropTypes.oneOf(Object.values(sizes)),
    iconPosition: PropTypes.oneOf(Object.values(iconPositions)),
    label: PropTypes.string,
    disabled: PropTypes.bool,
    icon: PropTypes.string,
    onClick: PropTypes.func,
    type: PropTypes.string,
    fullWidth: PropTypes.bool,
    className: PropTypes.string,
    href: PropTypes.string,
    isLoading: PropTypes.bool,
    loaderSize: PropTypes.string,
    loaderColor: PropTypes.string,
    btnRadius: PropTypes.string,
};

export default Button;
