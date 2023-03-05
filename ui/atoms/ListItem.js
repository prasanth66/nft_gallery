import React from "react";
import PropTypes from "prop-types";
import Link from "next/link";
import Image from "next/image";

const ListItem = ({
    lists,
    Type,
    listClass = "",
    itemFontSize = "text-base",
    itemFontWeight = "font-normal",
    itemFontColor = "text-neutral-900",
    itemClass = "",
    width = "min-w-[120px] max-w-max",
    positionType = "absolute",
    position = "",
    border = "border border-gray-300",
    itemPadding = "px-4 py-3",
}) => {
    return (
        <Type className={` flex flex-col shadow-outline bg-white rounded-md overflow-hidden z-40 ${width} ${listClass} ${border} ${positionType} ${position}`}>
            {lists.map((list, indx) => (
                <Link key={indx} href={list.link}>
                    <li
                        {...{
                            className: `${itemClass} ${itemPadding} flex flex-row justify-start items-center hover:bg-gray-100 ${itemFontSize} ${itemFontWeight} ${itemFontColor} cursor-pointer hover:text-black transition-all duration-400 ease-in-out`,
                            onClick: list.onClick,
                        }}
                    >
                        {list.listIconSrc && (
                            <span className="mr-2">
                                <Image src={list.listIconSrc} width={list.listIconWidth} height={list.listIconHeight} alt={list.listIconAlt} />
                            </span>
                        )}

                        {list.item}
                    </li>
                </Link>
            ))}
        </Type>
    );
};

export default ListItem;

ListItem.propTypes = {
    className: PropTypes.string,
    Type: PropTypes.string,
    listClass: PropTypes.string,
    listClass: PropTypes.string,
    itemClass: PropTypes.string,
    width: PropTypes.string,
    position: PropTypes.string,
    listIconSrc: PropTypes.string,
    listIconWidth: PropTypes.number,
    listIconHeight: PropTypes.number,
    listIconAlt: PropTypes.string,
};
