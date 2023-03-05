import PropTypes from "prop-types";
import React from "react";

const errorClass = "text-error-100 pl-0.5 text-sm pt-2 font-normal leading-[21px]";

const InputBox = ({
    isError = false,
    errorMessage,
    className,
    variant,
    disableClass = "disabled:bg-neutral-100 disabled:border-neutral-100 disabled:placeholder:text-erro-500",
    baseClasses = "w-full border bg-white rounded-lg outline-none placeholder:text-neutral-400 text-neutral-900 text-base font-normal leading-[21px] appearance-none",
    disabled,
    type = "text",
    register,
    id,
    dbName,
    isLabel,
    labelFor,
    labelText,
    labelClass,
    placeholder,
    ...property
}) => {
    const inputSize = {
        Default: "Default",
        Small: "Small",
        Large: "Large",
    };

    const inputStyle = {
        Default: "px-4 py-[10px]",
        Small: "p-2",
        Large: "px-4 py-3",
    };

    return (
        <div className="relative">
            {isLabel && (
                <label labelfor={labelFor} className={`text-neutral-900 text-base leading-6 font-normal block pb-2 ${labelClass}`}>
                    {" "}
                    {labelText}{" "}
                </label>
            )}

            <input
                type={type}
                placeholder={placeholder}
                {...(register && { ...register(dbName) })}
                {...{
                    className: `${inputStyle[variant]} ${baseClasses} ${disableClass} ${className} ${disabled === true ? "cursor-not-allowed" : "cursor-pointer"} ${
                        isError ? "border-error-100 hover:border-error-100 focus:border-error-100" : "border-neutral-300 hover:border-neutral-500 focus:border-primary-900"
                    } select-none`,
                    disabled,
                    ...property,
                }}
            />
            {isError && <span className={`${errorClass} select-none`}> {errorMessage} </span>}
        </div>
    );
};

export default InputBox;

InputBox.propTypes = {
    id: PropTypes.string,
    name: PropTypes.string,
    type: PropTypes.string,
    placeholder: PropTypes.string,
    autocomplete: PropTypes.oneOf(["on", "off"]),
    disabled: PropTypes.bool,
    autofocus: PropTypes.bool,
    required: PropTypes.bool,
    readonly: PropTypes.bool,
    isError: PropTypes.bool,
    errorClass: PropTypes.string,
    register: PropTypes.func,
    disableClass: PropTypes.string,
    variant: PropTypes.string,
    isLabel: PropTypes.bool,
    labelText: PropTypes.string,
    labelFor: PropTypes.string,
    labelClass: PropTypes.string,
};
