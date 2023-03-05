import React from "react";
import PropTypes from "prop-types";
import Image from "next/image";
import Heading from "../atoms/Heading";
import Button from "../atoms/Button";
import IcomoonIcon from "../atoms/IcomoonIcon";

const Modal = ({
    id = "",
    showModal = false,
    children,
    overlayClass = "",
    overLayBg = "bg-black ",
    overLayOpacity = "bg-opacity-20",
    cardWidth = "",
    cardClass = "",
    cardBg = "bg-white",
    cardBorder = "border",
    cardBorderColor = "border-gray-200",
    cardRadius = "rounded-sm",
    cardPadding = "p-6",
    cardShadow = "shadow-card",
    closeIcon = "close-b",
    modalHeight = "min-h-screen",
    modalPosition = "fixed",
    modalAlignment = "items-center",
    closeIconClass = "",
    closeModalPopup = () => {},
    modalHeader = true,
    modalTitle,
    modalTitleClass = "",
    modalFooter = true,
    modalPrimaryBtn = true,
    modalSecondaryBtn = false,
    primaryBtnLabel = "Yes",
    secondaryBtnLabel = "No",
    modalPrimaryBtnStyle = "primary",
    modalSecondaryBtnStyle = "ghost",
    btnRadius = "rounded",
    btnSize = "extraSmall",
    primaryBtnClick = () => {},
    modalBodyClass = "",
    modalFooterClass = "",
    btnAlignment = "justify-end",
    baseModal = false,
}) => {
    return (
        <>
            {showModal && (
                <div id={id} className={`w-full inset-0 ${modalPosition} z-50 `}>
                    <div className={`flex justify-center ${modalHeight} ${modalAlignment}`}>
                        <div className={`fixed inset-0 ${overLayBg} ${overLayOpacity} ${overlayClass}`} onClick={closeModalPopup}></div>
                        <div
                            className={`relative w-full  ${cardBg} ${cardBorder} ${cardBorderColor} ${cardRadius}  ${cardShadow} ${cardClass} ${cardWidth} ${
                                baseModal ? "p-0" : cardPadding
                            }`}
                        >
                            {modalHeader && (
                                <div>
                                    {modalTitle && (
                                        <div className="px-6 py-4 border-b border-secondary-200">
                                            <Heading type={6} className={`font-bold  ${modalTitleClass}`}>
                                                {" "}
                                                {modalTitle}{" "}
                                            </Heading>
                                        </div>
                                    )}
                                    {closeIcon && (
                                        <div className={`cursor-pointer absolute top-4 right-6 ${closeIconClass}`} onClick={closeModalPopup}>
                                            <IcomoonIcon icon={closeIcon} size="16" color="#6B6B80" />
                                        </div>
                                    )}
                                </div>
                            )}

                            <div className={`${modalBodyClass} ${baseModal && "p-6 border-b border-neutral-200"}`}>{children}</div>

                            {modalFooter && (
                                <div className={`flex items-center ${btnAlignment} ${modalFooterClass} ${baseModal ? "py-2.5 px-4" : "mt-6"}`}>
                                    {modalSecondaryBtn && (
                                        <Button style={modalSecondaryBtnStyle} btnRadius={btnRadius} label={secondaryBtnLabel} size={btnSize} onClick={closeModalPopup} />
                                    )}

                                    {modalPrimaryBtn && (
                                        <Button
                                            style={modalPrimaryBtnStyle}
                                            btnRadius={btnRadius}
                                            label={primaryBtnLabel}
                                            size={btnSize}
                                            onClick={primaryBtnClick}
                                            className="ml-2"
                                        />
                                    )}
                                </div>
                            )}
                        </div>
                    </div>
                </div>
            )}
        </>
    );
};

export default Modal;

Modal.propTypes = {
    showModal: PropTypes.bool,
    overLayBg: PropTypes.string,
    overLayOpacity: PropTypes.string,
    overlayClass: PropTypes.string,
    children: PropTypes.node,
    cardWidth: PropTypes.string,
    cardClass: PropTypes.string,
    cardBg: PropTypes.string,
    cardBorder: PropTypes.string,
    cardBorderColor: PropTypes.string,
    cardRadius: PropTypes.string,
    cardPadding: PropTypes.string,
    cardShadow: PropTypes.string,
    closeIcon: PropTypes.string,
    CloseIconWidth: PropTypes.number,
    CloseIconHeight: PropTypes.number,
    modalPosition: PropTypes.string,
    modalAlignment: PropTypes.string,
    closeIconClass: PropTypes.string,
    closeModalPopup: PropTypes.func,
    modalTitle: PropTypes.string,
    modalTitleClass: PropTypes.string,
    modalFooter: PropTypes.bool,
    modalPrimaryBtn: PropTypes.bool,
    modalSecondaryBtn: PropTypes.bool,
    primaryBtnLabel: PropTypes.string,
    secondaryBtnLabel: PropTypes.string,
    primaryBtnClick: PropTypes.func,
    modalBodyClass: PropTypes.string,
    modalFooterClass: PropTypes.string,
    baseModal: PropTypes.bool,
};
