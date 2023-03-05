import React from "react";
import Image from "next/image";
import PropTypes from "prop-types";
import { Button, Text, InputBox } from "atoms";

const LoginForm = ({
    forgotPwdText = "Forgot Password?",
    emailLabel = "Email",
    emailPlaceholder = "Email Address",
    passwordLabel = "Password",
    passwordPlaceholder = "Password",
    buttonText = "Login to your account",
    pwdIcon = "/images/icons/hide.svg",
    clickHerText = "Click Here",
    clickHereLink = "/",
    loginBtnText = "Login to your account",
    onClick = () => {},
    resetPwdClick = () => {},
    ...property
}) => {
    return (
        <div className={`${property.className} min-w-[500px] mx-auto flex flex-col space-y-10 items-center p-10 bg-white border border-neutral-300 rounded-lg w-fit`}>
            <div className="flex flex-col space-y-4 w-full">
                <InputBox isLabel labelText="Email" labelFor="email" name="email" type="email" placeholder="Email Address" variant="Default" />

                <div className="relative bg-red w-full">
                    <InputBox isLabel labelText="Password" labelFor="password" name="password" type="password" placeholder="Password" variant="Default" />

                    <div className="absolute bottom-3 right-4 cursor-pointer">
                        <Image src={pwdIcon} height={20} width={20} className="relative" alt="Password" />
                    </div>
                </div>
            </div>

            <div className="flex flex-col space-y-4 w-full">
                <Button className="text-center" style="primary" label={loginBtnText} size="small" onClick={onClick} />

                <div className="flex space-x-1 w-full justify-center">
                    <Text variant="body"> {forgotPwdText} </Text>

                    <Button href={clickHereLink} label={clickHerText} style="link" size="large" onClick={resetPwdClick} />
                </div>
            </div>
        </div>
    );
};

LoginForm.propTypes = {
    className: PropTypes.string,
    forgotPwdText: PropTypes.string,
    emailLabel: PropTypes.string,
    emailPlaceholder: PropTypes.string,
    passwordLabel: PropTypes.string,
    passwordPlaceholder: PropTypes.string,
    buttonText: PropTypes.string,
    pwdIcon: PropTypes.string,
    clickHerText: PropTypes.string,
    clickHereLink: PropTypes.string,
    loginBtnText: PropTypes.string,
};

export default LoginForm;
