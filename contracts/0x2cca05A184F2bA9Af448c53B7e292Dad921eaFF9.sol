contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[5366 len 20]
    stor2 = code.data[5366 len 20]
    stor1[0x1fb5b890fcb4e461b3dfd9d2736c8c3349844d7] = 1
    stor1[0x232bfc7cce7e7051344ea1069a6fb52325744db] = 1
    stor1[0x94c3108621d0af1a06e95e1ebe25d0c1e1a53dc] = 1
    stor1[0x1427697ec503c970dc7bc4b222c4991fbbf5eb1d] = 1
    stor1[0x1b2fe13662b3ba564829f0b49dbba41fa766593b] = 1
    stor1[0x24023eaeb08ef6c9720c7aa93d4f549b3d56d56d] = 1
    stor1[0x2c2615b3337cdf4b3f344134374dfcf914673d70] = 1
    stor1[0x386a0966b4de631c8b40acd1e1e880a82ae99bae] = 1
    stor1[0x3b3ae57de4a9e5b0b6de029c237d4d9467600753] = 1
    stor1[0x4223721a04a0d9779b2764ab4be31b03b5f0825f] = 1
    stor1[0x48c9095621bd922db2f7988b6438c6cfe4b18e97] = 1
    stor1[0x57d8dc077e499a3fade9968721a1f2eed17f35b5] = 1
    stor1[0x59536796a7a5178f0de3171c0d7f066691438594] = 1
    stor1[0x5a59291c424a6cea0d7f60f187f3231752458a71] = 1
    stor1[0x6b3a534e8615968185134c3d9075f9aed38dd819] = 1
    stor1[0x776ba8ec017b5bb67a7981623f4726a010dcbd25] = 1
    stor1[0x848f32641e3d16ba127f84d3f07bf0622d88b85d] = 1
    stor1[0x8f26c89525c8a051885202a2ca2ef90d0d2474af] = 1
    stor1[0x94d8c1efa4c4dbae38640802186d69be3a7dc738] = 1
    stor1[0x9fe1b5dfa43a3886aa1370354fed523c65e8d630] = 1
    stor1[0xa1a2366eec5f13903a8d88bdbddaecf604fd96b2] = 1
    stor1[0xb5ba542d5f947f5d6e313e9385d32f3e8ce91a1d] = 1
    stor1[0xbde2b1b09fa29ea824db6c1172488465b4e2504c] = 1
    stor1[0xce214ffb7ffe2cb49061dccab8482ad67beaeb57] = 1
    stor1[0xd1460f96fc8877c82e7dd23ecf5b4c3e180850d0] = 1
    stor1[0xd91d9fa07efe29c2832a9dad56a1640b38cd516e] = 1
    stor1[0xdeb3994e6fa46ec05e76c445d9fd71f9f1d1f2d0] = 1
    stor1[0xdebd8eac1cf11774daedcb96a7a296fb4203b8db] = 1
    stor1[0xea9b6aa4eaf9e5f70f1dc5a042975f26ddd0e528] = 1
    stor1[0xed0f47000f7399f8228632401ca30a80fca7c738] = 1
    stor1[0xefd172323720544fd2ede779ee41a0ab9758674a] = 1
    stor1[0xf7a6745bb397232cdbe539e4574ed1dd074c31db] = 1
    stor1[0xf91a2fe3f3b53f89c0f129184306899db8edf389] = 1
    stor1[0xff704db18c7aa41d38ee493289bc6d5fe93c96e5] = 1
    return code.data[3180 len 2174]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
address sub_e1e8a8cfAddress;

function owner() {
    return owner
}

function sub_d233e4eb(?) {
    return bool(stor1[arg1])
}

function sub_e1e8a8cf(?) {
    return sub_e1e8a8cfAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_8f9bdd78(?) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function sub_d2e5e28b(?) {
    require msg.sender == owner
    sub_e1e8a8cfAddress = arg1
    stor2 = arg1
}

function sub_50168f2e(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xa6f9dae1 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function sub_0cb61f6c(?) {
    if not stor1[address(msg.sender)]:
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.revokeToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}



}
