contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 14595]




// =====================  Runtime code  =====================


uint256 contractCount;
array of struct contracts;

function contractCount() {
    return contractCount
}

function contracts(address arg1, uint256 arg2) {
    require arg2 < contracts[arg1].field_0
    return contracts[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_2d8d17c6(?) {
    create contract with 0 wei
                    code: code.data[888 len 13664], address(arg1), arg2, arg3, arg4, arg5
    require create.new_address
    contracts[address(msg.sender)].field_0++
    if not contracts[address(msg.sender)].field_0 <= contracts[address(msg.sender)].field_0 + 1:
        idx = contracts[address(msg.sender)].field_0 + 1
        while contracts[address(msg.sender)].field_0 > idx:
            contracts[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    contracts[address(msg.sender)][contracts[address(msg.sender)].field_0].field_0 = address(create.new_address)
    contractCount++
    return address(create.new_address)
}

function getContractAddress() {
    if not contracts[address(msg.sender)].field_0:
        mem[(32 * contracts[address(msg.sender)].field_0) + 160] = 32
        mem[(32 * contracts[address(msg.sender)].field_0) + 192] = contracts[address(msg.sender)].field_0
        mem[(32 * contracts[address(msg.sender)].field_0) + 224 len floor32(contracts[address(msg.sender)].field_0)] = mem[160 len floor32(contracts[address(msg.sender)].field_0)]
        return memory
          from (32 * contracts[address(msg.sender)].field_0) + 160
           len (96 * contracts[address(msg.sender)].field_0) + 64
    mem[160] = contracts[address(msg.sender)].field_0
    idx = 160
    s = 0
    while (32 * contracts[address(msg.sender)].field_0) + 128 > idx:
        mem[idx + 32] = contracts[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * contracts[address(msg.sender)].field_0) + 224 len floor32(contracts[address(msg.sender)].field_0)] = mem[160 len floor32(contracts[address(msg.sender)].field_0)]
    return Array(len=contracts[address(msg.sender)].field_0, data=mem[160 len floor32(contracts[address(msg.sender)].field_0)], mem[(32 * contracts[address(msg.sender)].field_0) + floor32(contracts[address(msg.sender)].field_0) + 224 len (32 * contracts[address(msg.sender)].field_0) - floor32(contracts[address(msg.sender)].field_0)]), 
}



}
