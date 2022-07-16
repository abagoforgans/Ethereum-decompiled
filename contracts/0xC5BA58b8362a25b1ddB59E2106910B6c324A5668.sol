contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address beneficiaryAddress;
address sub_017e97bcAddress;
address tokenAssignmentControlAddress;
uint256 sub_4a1bb6b4;
uint8 stor7;
mapping of uint8 sub_32ba4cb0;

function sub_017e97bc(?) {
    return sub_017e97bcAddress
}

function sub_32ba4cb0(?) {
    require calldata.size - 4 >= 32
    require sub_32ba4cb0[arg1] <= 3
    return sub_32ba4cb0[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function isOpen() {
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[215 len 13]
    return bool(stor7)
}

function sub_4a1bb6b4(?) {
    return sub_4a1bb6b4
}

function tokenAssignmentControl() {
    return tokenAssignmentControlAddress
}

function closeShop() {
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    stor7 = 0
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    beneficiaryAddress = arg1
}

function priceWei() {
    require ext_code.size(stor1)
    staticcall stor1.0x54a4adc2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_4a1bb6b4:
        return 0
    require ext_call.return_data[0] * sub_4a1bb6b4 / sub_4a1bb6b4 == ext_call.return_data[0]
    return (ext_call.return_data[0] * sub_4a1bb6b4 / 100)
}

function openShop() {
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[215 len 13]
    stor7 = 1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e596f75206e65656420746f2070726f766964652061206e6f6e2d7a65726f207072696365,
                    mem[201 len 27]
    sub_4a1bb6b4 = arg1
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe596f75206e65656420746f2070726f7669646520616e2061637475616c204f7261636c6520636f6e7472616374,
                    mem[210 len 18]
    stor1 = arg1
}

function sub_0234ef75(?) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[215 len 13]
    stor0 = arg1
}

function setPricingStrategy(address arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2063616c6c20746869732066756e6374696f6e,
                    mem[217 len 11]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2050726963696e67537472617465677920636f6e7472616374,
                    mem[219 len 9]
    stor2 = arg1
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if tokenAssignmentControlAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x2e746f6b656e41737369676e6d656e74436f6e74726f6c206b657920726571756972656420666f7220746869732066756e6374696f6e,
                    mem[218 len 10]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor0:
        revert with 0, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[ceil32(arg4.length) + 247 len 13]
    if beneficiaryAddress != arg2:
        revert with 0, 
                    32,
                    58,
                    0x2e4f6e6c79207468652063757272656e742062656e6566696e69636172792063616e2073656e642061737365747320746f207468652073686f70,
                    mem[ceil32(arg4.length) + 254 len 6]
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function confirmShipping(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_017e97bcAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x2e7368697070696e67436f6e74726f6c206b657920726571756972656420666f7220746869732066756e6374696f6e,
                    mem[211 len 17]
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[215 len 13]
    sub_32ba4cb0[arg1] = 3
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ShippingConfirmed(ext_call.return_data[12 len 20], arg1);
}

function rejectShipping(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_017e97bcAddress != msg.sender:
        revert with 0, 
                    32,
                    47,
                    0x2e7368697070696e67436f6e74726f6c206b657920726571756972656420666f7220746869732066756e6374696f6e,
                    mem[ceil32(arg2.length) + 243 len 17]
    if not stor0:
        revert with 0, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[ceil32(arg2.length) + 247 len 13]
    sub_32ba4cb0[arg1] = 1
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit ShippingFailed(address arg1, uint256 arg2, string arg3):
                            0,
                            32,
                            arg2.length,
                            Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                            address(ext_call.return_data[0]),
                            arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit ShippingFailed(address arg1, uint256 arg2, string arg3):
                            0,
                            32,
                            arg2.length,
                            Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                            mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                            address(ext_call.return_data[0]),
                            arg1,
}

function shipToMe(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor0:
        revert with 0, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[ceil32(arg1.length) + 247 len 13]
    if bool(stor7) != 1:
        revert with 0, 
                    32,
                    43,
                    0x2e546869732063616c6c206f6e6c7920776f726b73207768656e207468652073686f70206973206f70656e,
                    mem[ceil32(arg1.length) + 239 len 21]
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    50,
                    0x2e596f752063616e206f6e6c792072657175657374207368697070696e6720666f7220796f7572206f776e20746f6b656e73,
                    mem[ceil32(arg1.length) + 246 len 14]
    require sub_32ba4cb0[arg2] <= 3
    if sub_32ba4cb0[arg2] != 1:
        revert with 0, 
                    32,
                    78,
                    0x2e5368697070696e672077617320616c72656164792072657175657374656420666f72207468697320746f6b656e206f7220697420776173206e6f7420736f6c6420627920746869732073686f70,
                    mem[ceil32(arg1.length) + 274 len 18]
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit ShippingSubmitted(address arg1, uint256 arg2, string arg3):
                               0,
                               32,
                               arg1.length,
                               Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                               msg.sender,
                               arg2,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit ShippingSubmitted(address arg1, uint256 arg2, string arg3):
                               0,
                               32,
                               arg1.length,
                               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                               mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                               msg.sender,
                               arg2,
    sub_32ba4cb0[arg2] = 2
}

function _fallback() payable {
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e596f75206e65656420746f2070726f7669646520616e2061637475616c2043727970746f7374616d7020636f6e7472616374,
                    mem[215 len 13]
    if bool(stor7) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2e546869732063616c6c206f6e6c7920776f726b73207768656e207468652073686f70206973206f70656e,
                    mem[207 len 21]
    require ext_code.size(stor1)
    staticcall stor1.0x54a4adc2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_4a1bb6b4:
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.adjustPrice(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sub_4a1bb6b4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_4a1bb6b4 = ext_call.return_data[0]
        if 0 > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x2e596f75206e65656420746f2073656e6420656e6f7567682063757272656e637920746f2061637475616c6c792070617920746865206974656d,
                        mem[222 len 6]
        call beneficiaryAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        staticcall stor0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AssetSold(0, msg.sender, ext_call.return_data[0]);
        sub_32ba4cb0[ext_call.return_data[0]] = 1
        if 0 < msg.value:
            require 0 <= msg.value
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_call.return_data[0] * sub_4a1bb6b4 / sub_4a1bb6b4 == ext_call.return_data[0]
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.adjustPrice(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sub_4a1bb6b4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_4a1bb6b4 = ext_call.return_data[0]
        if ext_call.return_data[0] * sub_4a1bb6b4 / 100 > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x2e596f75206e65656420746f2073656e6420656e6f7567682063757272656e637920746f2061637475616c6c792070617920746865206974656d,
                        mem[222 len 6]
        call beneficiaryAddress with:
           value ext_call.return_data[0] * sub_4a1bb6b4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        staticcall stor0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AssetSold((ext_call.return_data[0] * sub_4a1bb6b4 / 100), msg.sender, ext_call.return_data[0]);
        sub_32ba4cb0[ext_call.return_data[0]] = 1
        if ext_call.return_data[0] * sub_4a1bb6b4 / 100 < msg.value:
            require ext_call.return_data[0] * sub_4a1bb6b4 / 100 <= msg.value
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] * sub_4a1bb6b4 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
