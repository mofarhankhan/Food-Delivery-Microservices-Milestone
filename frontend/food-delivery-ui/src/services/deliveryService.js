import API from "./api";

export const registerPartner = async (data) => {
    const response = await API.post(
        `/delivery/register`,
        null,
        {
            params: {
                name: data.name,
                phone: data.phone,
                vehicleType: data.vehicleType,
                latitude: data.latitude || 28.5706,
                longitude: data.longitude || 77.3219
            }
        }
    );
    return response.data;
};

export const getAvailablePartners = async () => {
    const response = await API.get("/delivery/available");
    return response.data;
};

export const getPartnerById = async (id) => {
    const response = await API.get(`/delivery/partner/${id}`);
    return response.data;
};