import React from "react";
import PropTypes from "prop-types";
import { Button, Logo, MenuList } from "atoms";

const Navbar = ({
    className = "",
    shadow = "shadow-nav",
    cardPadding = "px-8 py-5",
    logo = "/images/logo.svg",
    logoAlt = "MVP Rockets",
    logoWidth = "140",
    logoHeight = "40",
    menuItem = [],
    buttonLabel = "Logout",
}) => {
    return (
        <div className={`${shadow} ${cardPadding} ${className} flex flex-row justify-between items-center bg-white w-full h-20`}>
            <Logo src={logo} alt={logoAlt} width={logoWidth} height={logoHeight} />

            <div className={`flex items-center space-x-10`}>
                <MenuList menuItem={menuItem} />
                <Button label={buttonLabel} size="small" />
            </div>
        </div>
    );
};

export default Navbar;

Navbar.propTypes = {
    shadow: PropTypes.string,
    logo: PropTypes.string,
    logoAlt: PropTypes.string,
    menuItem: PropTypes.array,
};
