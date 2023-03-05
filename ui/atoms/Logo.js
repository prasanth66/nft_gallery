import React from "react";
import PropTypes from "prop-types";
import NextImage from "next/image";

const Logo = ({ ...property }) => {
    return (
        <div className={`cursor-pointer w-fit select-none ${property.className}`}>
            <NextImage onClick={property.onClick} src={property.src} width={property.width} height={property.height} alt={`${property.alt}`} />
        </div>
    );
};

export default Logo;

Logo.propTypes = {
    className: PropTypes.string,
    width: PropTypes.string,
    height: PropTypes.string,
    alt: PropTypes.string,
};
