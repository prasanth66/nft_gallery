import * as HttpService from "./http.service";
import * as URL from "./url.service";
import { GET_USERS_URL, CREATE_USERS_URL } from "./url.service";
export const createUser = (user) => {
    return HttpService.postWithAuth(CREATE_USERS_URL(), user);
};

export const getUsers = () => {
    return HttpService.getWithAuth(GET_USERS_URL());
};
