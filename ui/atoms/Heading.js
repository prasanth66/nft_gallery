import PropTypes from "prop-types";
import React from "react";

const Heading = ({ children, type = "h1", className = "" }) => {
    const HeadingVariants = {
        h1: "h1",
        h2: "h2",
        h3: "h3",
        h4: "h4",
        h5: "h5",
        h6: "h6",
    };

    const HeadingStyle = {
        h1: "text-5xl",
        h2: "text-4xl",
        h3: "text-3xl",
        h4: "text-2xl",
        h5: "text-xl",
        h6: "text-lg",
    };
    const Type = HeadingVariants[type] ? HeadingVariants[type] : "h1";
    return <Type className={`${HeadingStyle[type]} ${className}`}>{children}</Type>;
};

export default Heading;

Heading.propTypes = {
    type: PropTypes.string,
    className: PropTypes.string,
    children: PropTypes.string,
};
