import React from "react";
import PropTypes from "prop-types";
import { Button, Heading } from "atoms";
const PostHeader = ({ title, btnLabel }) => {
    return (
        <div className="bg-white w-full flex justify-between px-6 py-4 fixed top-0 left-0 z-10 overflow-hidden">
            <Heading type="h6" className="font-semibold" children={title} />
            {btnLabel && <Button label={btnLabel} style="" size="" fontSize="text-sm" fontColor="text-neutral-400" fontWeight="font-normal" />}
        </div>
    );
};

PostHeader.propTypes = {
    title: PropTypes.string,
    btnLabel: PropTypes.string,
};

export default PostHeader;
