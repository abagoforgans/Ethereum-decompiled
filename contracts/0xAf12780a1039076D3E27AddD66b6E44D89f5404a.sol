contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[70 len 2178]
}



// =====================  Runtime code  =====================


address coldWalletAddress;
array of uint256 stor1;
array of struct stor2;
array of uint256 stor3;

function hotWallet() {
    return address(stor1.length)
}

function coldWallet() {
    return coldWalletAddress
}

function _fallback() payable {
    revert 
}

function sub_d4fe81ad(?) {
    require coldWalletAddress == msg.sender
    address(stor1.length) = arg1
}

function sub_bd03a42e(?) {
    require address(stor1.length) == msg.sender
    create contract with 0 wei
                    code: code.data[1613 len 522]
    require create.new_address
}

function sub_4aa8650f(?) {
    require coldWalletAddress == msg.sender
    require 0 < stor2[address(arg1)].field_0
    idx = 0
    while stor2[address(arg1)][4 * uint8(idx)].field_0 != arg2:
        require uint8(idx + 1) < stor2[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        idx = idx + 1
        continue 
    require uint8(None + 2) < stor2[address(arg1)].field_0
    stor2[address(arg1)][4 * uint8(None + 2)].field_256 = arg3
}

function sub_16298909(?) {
    require coldWalletAddress == msg.sender
    idx = 0
    while uint8(idx) < stor2[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 2)
        if stor2[address(arg1)][4 * uint8(idx)].field_0 != arg2:
            idx = idx + 1
            continue 
        require stor2[address(arg1)].field_0 - 1 < stor2[address(arg1)].field_0
        require uint8(idx) < stor2[address(arg1)].field_0
        stor2[address(arg1)][4 * uint8(idx)].field_0 = stor2[address(arg1)][stor2[address(arg1)].field_0 - 1].field_0
        stor2[address(arg1)][4 * uint8(idx)].field_256 = stor2[address(arg1)][stor2[address(arg1)].field_0 - 1].field_256
        stor2[address(arg1)][4 * uint8(idx)].field_512 = stor2[address(arg1)][stor2[address(arg1)].field_0 - 1].field_512
        stor2[address(arg1)][4 * uint8(idx)].field_768 = stor2[address(arg1)][stor2[address(arg1)].field_0 - 1].field_768
        stor2[address(arg1)].field_0--
        if not stor2[address(arg1)].field_0 <= stor2[address(arg1)].field_0 - 1:
            idx = sha3(sha3(address(arg1), 2)) + (4 * stor2[address(arg1)].field_0 - 1)
            while sha3(sha3(address(arg1), 2)) + (4 * stor2[address(arg1)].field_0) > idx:
                stor[idx] = 0
                uint256(stor1[idx]) = 0
                stor2[idx].field_0 = 0
                stor3[idx] = 0
                idx = idx + 4
                continue 
}

function transfer(address arg1, address arg2, address arg3, uint256 arg4) {
    require address(stor1.length) == msg.sender
    s = 0
    s = 0
    idx = 0
    while uint8(idx) < stor2[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 2)
        require stor2[address(arg1)][4 * uint8(idx)].field_0
        if block.timestamp / stor2[address(arg1)][4 * uint8(idx)].field_0 > stor2[address(arg1)][4 * uint8(idx)].field_512:
            if arg4 <= stor2[address(arg1)][4 * uint8(idx)].field_256:
                s = block.timestamp / stor2[address(arg1)][4 * uint8(idx)].field_0
                s = (4 * uint8(idx)) + sha3(sha3(address(arg1), 2))
                idx = idx + 1
                continue 
        else:
            if stor2[address(arg1)][4 * uint8(idx)].field_768 + arg4 <= stor2[address(arg1)][4 * uint8(idx)].field_256:
                if block.timestamp / stor2[address(arg1)][4 * uint8(idx)].field_0 <= stor2[address(arg1)][4 * uint8(idx)].field_512:
                    s = block.timestamp / stor2[address(arg1)][4 * uint8(idx)].field_0
                    s = (4 * uint8(idx)) + sha3(sha3(address(arg1), 2))
                    idx = idx + 1
                    continue 
                if arg4 <= stor2[address(arg1)][4 * uint8(idx)].field_256:
                    s = block.timestamp / stor2[address(arg1)][4 * uint8(idx)].field_0
                    s = (4 * uint8(idx)) + sha3(sha3(address(arg1), 2))
                    idx = idx + 1
                    continue 
        return 0
    require ext_code.size(arg2)
    return 0
}



}
