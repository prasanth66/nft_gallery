const ApiUrl = process.env.NEXT_PUBLIC_API_URL;

const UrlParamsReplace = (url, params = {}) => {
    let urlWithPrefix = `${ApiUrl}${url}`;
    if (params) {
        Object.keys(params).forEach((key) => (urlWithPrefix = urlWithPrefix.replace(`:${key}`, params[key])));
    }
    return urlWithPrefix;
};

export const GET_USERS_URL = () => UrlParamsReplace("/users");
export const CREATE_USERS_URL = () => UrlParamsReplace("/users");
