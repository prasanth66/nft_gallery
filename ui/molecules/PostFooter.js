import React from "react";
import Image from "next/image";
import PropTypes from "prop-types";
import { Button } from "atoms";
import { AddMediaPopup } from "organisms";
const PostFooter = ({ showModalBtn, mediaPopup, closeModalPopup, lists, btnLabel = "Save", btnClick }) => {
    return (
        <>
            <div className={`bg-white w-full flex items-center  px-6 py-3.5 fixed bottom-0 right-0 z-10 ${showModalBtn ? "justify-between" : "justify-end"}`}>
                {showModalBtn && (
                    <div onClick={showModalBtn} className="flex-shrink-0 mb-2 cursor-pointer">
                        <Image src="/images/icons/add.svg" width="24" height="24" alt="add" />
                    </div>
                )}
                <Button size="small" label={btnLabel} btnRadius="rounded-full" onClick={btnClick} />
            </div>

            <AddMediaPopup lists={lists} cardWidth="w-full" modalAlignment="items-end" showModal={mediaPopup} closeModalPopup={closeModalPopup} />
        </>
    );
};

PostFooter.propTypes = {
    showModalBtn: PropTypes.func,
    mediaPopup: PropTypes.func,
    closeModalPopup: PropTypes.func,
    lists: PropTypes.array,
    btnLabel: PropTypes.string,
    btnClick: PropTypes.func,
};

export default PostFooter;
