contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor2; offset 160
address stor2;

function _fallback() payable {
    stor0 = 0x7307d0b136a79bac718f43388aed706389c4588
    stor1 = 0x4d6387f3b967da39b11de111158d49754c31985d
    address(stor2.field_0) = 0x37005accab2a7807d8572902a172c2a325021910
    uint8(stor2.field_160) = 0
    return code.data[232 len 2375]
}



// =====================  Runtime code  =====================


address sub_3a7b779eAddress;
address sub_b4b31becAddress;
uint8 sub_85463816; offset 160
address sub_45d03fceAddress;
uint256 blockNumber;
array of struct sub_7651bc92;

function sub_3a7b779e(?) payable {
    return sub_3a7b779eAddress
}

function sub_45d03fce(?) payable {
    return sub_45d03fceAddress
}

function blockNumber() payable {
    return blockNumber
}

function sub_7651bc92(?) payable {
    return sub_7651bc92[0 len sub_7651bc92.length].field_0
}

function sub_85463816(?) payable {
    return sub_85463816
}

function sub_b4b31bec(?) payable {
    return sub_b4b31becAddress
}

function sub_bb7e8c28(?) payable {
    if sub_85463816:
        if block.number - blockNumber >= 35:
            if eth.balance(this.address) > 0:
                mem[164] = uint256(sub_7651bc92.field_0)
                idx = 164
                s = 0
                while sub_7651bc92.length + 164 > idx + 32:
                    mem[idx + 32] = sub_7651bc92[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call sub_b4b31becAddress.queuePayment(bytes rg1) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 34050 wei
                    args Array(len=sub_7651bc92.length, data=mem[164 len sub_7651bc92.length + (floor32(sub_7651bc92.length - 1) + -sub_7651bc92.length + 32 % 32)])
                require ext_call.success
            sub_85463816 = 0
}

function _fallback() payable {
    if sub_45d03fceAddress != msg.sender:
        if sub_85463816:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value >= 7 * 10^17:
                call sub_45d03fceAddress.bet(uint8 rg1, bool rg2, uint8 rg3) with:
                   value msg.value - 2 * 10^17 wei
                     gas gas_remaining - 34050 wei
                    args 11, 1, 1
                require ext_call.success
                if ext_call.return_data[0] == -1:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    call sub_3a7b779eAddress.deposit() with:
                       value 2 * 10^17 wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    call sub_3a7b779eAddress.scheduleCall(address rg1, bytes4 rg2, bytes32 rg3, uint256 rg4, uint8 rg5) with:
                         gas gas_remaining - 25050 wei
                        args 0, 0, Mask(32, 224, sha3('alarm()')), sha3(None), block.number + 45, 64
                    sub_85463816 = 1
                    blockNumber = block.number
                    sub_7651bc92.length = (2 * calldata.size) + 1
                    s = 0
                    idx = 0
                    while calldata.size > idx:
                        sub_7651bc92[s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, calldata.size + 31) >> 5
                    while sub_7651bc92.length + 31 / 32 > idx:
                        sub_7651bc92[idx].field_0 = 0
                        idx = idx + 1
                        continue 
}



}
