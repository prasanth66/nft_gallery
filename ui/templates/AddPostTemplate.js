import React, { useState } from "react";
import PropTypes from "prop-types";
import { UploadImagePreview, PostFooter, PostHeader } from "molecules";
import { Text, Avatar, TextArea } from "atoms";

const AddPostTemplate = ({ postProfileImg, uploadTypeList, isUploaded = false, inputLength, inputMaxLength, btnClick = () => {} }) => {
    const [mediaPopup, setMediaPopup] = useState(false);
    return (
        <>
            <PostHeader title="Add a post" />

            <div className="bg-gray-100 px-5 h-screen pt-20 pb-[92px] overflow-y-auto">
                <div className="flex h-full">
                    <div className="flex-shrink-0">
                        <Avatar imgSrc={postProfileImg} />
                    </div>

                    <div className="w-full ml-6 relative">
                        <TextArea
                            height="min-h-[100px]"
                            bg="bg-transparent"
                            border="border-0"
                            fontSize="text-sm"
                            variant="extraSmall"
                            placeholder={`Share your thoughts, ask questions or discuss ideas \r\n \r\n Use #tags to tag a topic \r\n # to tag a topic \r\n Use @ to mention a user \r\n $Use $ to mention a stock \r\n \r\n  Character limit is 1000`}
                        />

                        {isUploaded && (
                            <div className="mb-3">
                                <UploadImagePreview imgSrc="/images/demo-img.jpg" imgWidth="80" imgHeight="80" imgAlt="demo" />
                            </div>
                        )}
                        <div className="text-right absolute right-0 bottom-0">
                            {inputLength && (
                                <Text variant="caption" textColor="text-neutral-400">
                                    {inputLength}/{inputMaxLength}
                                </Text>
                            )}
                        </div>
                    </div>
                </div>
            </div>

            <PostFooter
                showModalBtn={() => setMediaPopup(true)}
                mediaPopup={mediaPopup}
                closeModalPopup={() => setMediaPopup(false)}
                lists={uploadTypeList}
                btnLabel="Save"
                btnClick={btnClick}
            />
        </>
    );
};

AddPostTemplate.propTypes = {
    postProfileImg: PropTypes.string,
    uploadTypeList: PropTypes.array,
    isUploaded: PropTypes.bool,
    inputLength: PropTypes.number,
    inputMaxLength: PropTypes.number,
    btnClick: PropTypes.func,
};

export default AddPostTemplate;
