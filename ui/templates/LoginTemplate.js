import React from "react";
import PropTypes from "prop-types";
import { LoginForm, Navbar } from "molecules";
import { Button, Text } from "atoms";

const LoginTemplate = ({
    createAccountLink = "https://www.google.com",
    loginText = "Login to your Account",
    notAccountText = "Do not have an account?",
    companyName = "MVPRockets.",
    companyLink = "https://mvprockets.com",
    createAccountText = "Create an account",
    copyrightYear = "2022",
    ...property
}) => {
    return (
        <div className="flex items-stretch flex-col h-screen justify-center">
            <Navbar logo="/images/logo.svg" className="self-start" />
            <div className="bg-neutral-100 h-full flex flex-col items-stretch">
                <div className={`${property.className} h-full flex flex-col space-y-6 items-center justify-center mx-auto w-fit`}>
                    <Text variant="bodySmall" fontSize="text-xl" fontWeight="font-semibold">
                        {loginText}
                    </Text>

                    <LoginForm />

                    <div className="flex space-x-1">
                        <Text>{notAccountText}</Text>
                        <Button href={createAccountLink} label={createAccountText} style="link" size="large" />
                    </div>
                </div>

                <Text variant="bodySmall" textColor="text-neutral-500" className="text-center py-4 mx-auto flex cursor-default">
                    Copyright © {copyrightYear},
                    <a href={companyLink} className="text-neutral-500 no-underline px-0.5 cursor-pointer hover:text-neutral-800">
                        {companyName}
                    </a>
                    All rights reserved.
                </Text>
            </div>
        </div>
    );
};

LoginTemplate.propTypes = {
    createAccountLink: PropTypes.string,
    loginText: PropTypes.string,
    notAccountText: PropTypes.string,
    createAccountText: PropTypes.string,
    companyName: PropTypes.string,
    companyLink: PropTypes.string,
    copyrightYear: PropTypes.string,
};

export default LoginTemplate;
