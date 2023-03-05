import PropTypes from "prop-types";
import React, { useLayoutEffect, useRef, useState, useEffect } from "react";

const TextArea = ({
    variant = "default",
    id = "",
    name,
    placeholder,
    bg = "bg-lightGrey disable:bg-neutral-100",
    height = "h-[40px]",
    fontSize = "text-base",
    fontColor = "placeholder:text-neutral-400 text-neutral-900",
    border = "border",
    borderColor = "border-neutral-200 hover:border-neutral-500 focus:border-primary-900 visited:border-neutral-400 disable:border-neutral-300",
    borderRadius = "rounded",
    className = "leading-5",
    disabled,
    isError = false,
    errorClass = "text-error-100 pl-0.5 text-sm pt-2 font-normal",
    errorMessage = "",
    register = () => {},
    onChangeValue = () => {},
    value,
    rows = 1,
    ...property
}) => {
    const textAreaField = register(id);

    const textareaSize = {
        extraSmall: "p-0",
        small: "p-2",
        default: "p-4",
        large: "p-4",
    };

    const MIN_TEXTAREA_HEIGHT = 40;
    const textareaRef = useRef(null);
    const [textareaValue, setTextareaValue] = useState(value || "");

    useEffect(() => {
        setTextareaValue(value || "");
    }, [value]);

    const onChange = (event) => setTextareaValue(event.target.value);

    useLayoutEffect(() => {
        textareaRef.current.style.height = "inherit";
        textareaRef.current.style.height = `${Math.max(textareaRef.current.scrollHeight, MIN_TEXTAREA_HEIGHT)}px`;
    }, [textareaValue]);

    return (
        <>
            <textarea
                id={id}
                name={name}
                placeholder={placeholder}
                className={`w-full outline-none resize-none no-scrollbar cursor-pointer disable:pointer-events-none ${
                    textareaSize[variant]
                } ${bg} ${fontSize} ${height} ${border} ${borderRadius} ${fontSize} ${fontColor} ${className} ${isError ? "border-error-100" : `${borderColor}`} `}
                {...textAreaField}
                onChange={(e) => {
                    //if (textAreaField) { textAreaField.onChange(e); }
                    onChangeValue(e);
                    onChange(e);
                }}
                ref={textareaRef}
                value={textareaValue}
                rows={rows}
                {...property}
            ></textarea>
            {isError ?? <span className={`${errorClass} select-none`}> {errorMessage} </span>}
        </>
    );
};

export default TextArea;

TextArea.propTypes = {
    variant: PropTypes.string,
    id: PropTypes.string,
    name: PropTypes.string,
    placeholder: PropTypes.string,
    padding: PropTypes.string,
    bg: PropTypes.string,
    height: PropTypes.string,
    fontSize: PropTypes.string,
    fontColor: PropTypes.string,
    border: PropTypes.string,
    borderColor: PropTypes.string,
    borderRadius: PropTypes.string,
    className: PropTypes.string,
    disabled: PropTypes.bool,
    isError: PropTypes.bool,
    errorClass: PropTypes.string,
    errorMessage: PropTypes.string,
    register: PropTypes.func,
    onChangeValue: PropTypes.func,
    textareaValue: PropTypes.string,
};
