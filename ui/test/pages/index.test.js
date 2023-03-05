import { render, screen, waitFor } from "@testing-library/react";
import Home from "pages";
import * as UserService from "../../services/user.service";
describe.only("", () => {
    let response;
    beforeEach(() => {
        const fetch = UserService.getUsers;
        UserService.getUsers = jest
            .fn(async () => {
                response = await fetch();

                return response;
            })
            .mockClear();
    });
    it("should render", async () => {
        render(<Home />);
        await waitFor(() => {
            expect(UserService.getUsers).toHaveBeenCalledTimes(1);
            expect(response.entity[0].name).toBeTruthy();
        });
    });
    afterEach(() => {});
});
