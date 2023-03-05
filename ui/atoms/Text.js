import PropTypes from "prop-types";
import React from "react";

const Text = ({ variant = "body", fontSize = "", fontWeight = "font-normal", textColor = "text-neutral-900", children, className, onClick }) => {
    const TextType = {
        body: "body",
        bodySmall: "bodySmall",
        caption: "caption",
    };

    const TextStyle = {
        body: "text-base",
        bodySmall: "text-sm",
        caption: "text-xs",
    };
    return (
        <p variant={TextType[variant]} className={`${TextStyle[variant]} ${fontSize} ${fontWeight} ${textColor} ${className}`} onClick={onClick}>
            {children}
        </p>
    );
};

export default Text;

Text.propTypes = {
    variant: PropTypes.string,
    children: PropTypes.string,
    fontSize: PropTypes.string,
    fontWeight: PropTypes.string,
    textColor: PropTypes.string,
    className: PropTypes.string,
};
