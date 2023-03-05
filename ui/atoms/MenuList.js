import React from "react";
import PropTypes from "prop-types";
import Link from "next/link";
import Text from "./Text";

const MenuList = ({ menuItem = [], listClass, ...properties }) => {
    return (
        <nav>
            <ul className={`flex space-x-10 ${listClass}`}>
                {menuItem.map((menu, index) => (
                    <Link href={"/"}>
                        <li key={index}>
                            <Text
                                variant="bodySmall"
                                className={`cursor-pointer hover:text-primary-900 transition-all ease-in-out duration-700 ${menu.isActive && "text-primary-900"} ${
                                    properties.className
                                }`}
                            >
                                {menu.title}
                            </Text>
                        </li>
                    </Link>
                ))}
            </ul>
        </nav>
    );
};

export default MenuList;

MenuList.propTypes = {
    className: PropTypes.string,
    listClass: PropTypes.string,
    menuItem: PropTypes.array,
};
