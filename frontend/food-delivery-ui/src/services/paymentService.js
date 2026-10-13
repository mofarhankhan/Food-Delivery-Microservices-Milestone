import API from "./api";

export const initiatePayment = async (data) => {
    const response = await API.post("/payment/initiate", data);
    return response.data;
};

export const confirmPayment = async (orderId) => {
    const response = await API.put(`/payment/confirm/${orderId}`);
    return response.data;
};