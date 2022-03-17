contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    stor0 = code.data[1152 len 32]
    uint256(stor1.field_0) = code.data[1184 len 32]
    return code.data[170 len 982]
}



// =====================  Runtime code  =====================


address sub_b4b31becAddress;
uint8 stor1; offset 160
address sub_45d03fceAddress;
uint256 stor2;
array of uint256 stor3;

function sub_45d03fce(?) payable {
    return sub_45d03fceAddress
}

function sub_b4b31bec(?) payable {
    return sub_b4b31becAddress
}

function die() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if sub_45d03fceAddress != msg.sender:
        if not stor1:
            call sub_45d03fceAddress.bet(uint8 rg1, bool rg2, uint8 rg3) with:
               value msg.value wei
                 gas 500000 wei
                args 11, 1, 1
            require ext_call.success
            if ext_call.return_data[0] == -1:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor1 = 1
                stor2 = block.timestamp
                stor3.length = (2 * calldata.size) + 1
                s = 0
                idx = 0
                while calldata.size > idx:
                    stor3[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, calldata.size + 31) >> 5
                while stor3.length + 31 / 32 > idx:
                    stor3[idx] = 0
                    idx = idx + 1
                    continue 
        else:
            if block.timestamp - stor2 < 2 * 3600:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                call sub_45d03fceAddress.bet(uint8 rg1, bool rg2, uint8 rg3) with:
                   value msg.value wei
                     gas 500000 wei
                    args 11, 1, 1
                require ext_call.success
                if ext_call.return_data[0] == -1:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    stor1 = 1
                    stor2 = block.timestamp
                    stor3.length = (2 * calldata.size) + 1
                    s = 0
                    idx = 0
                    while calldata.size > idx:
                        stor3[s] = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, calldata.size + 31) >> 5
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx] = 0
                        idx = idx + 1
                        continue 
}



}
