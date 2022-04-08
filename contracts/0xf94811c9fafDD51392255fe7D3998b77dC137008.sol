contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 9138]
}



// =====================  Runtime code  =====================


address curatorAddress;
address fundManagerAddress;
array of uint256 sub_9ce1413b;
uint256 sub_463eef6e;
mapping of address stor4;
mapping of uint8 stor5;
array of struct stor6;

function sub_463eef6e(?) {
    return sub_463eef6e
}

function fundManager() {
    return fundManagerAddress
}

function sub_9ce1413b(?) {
    return sub_9ce1413b[0 len sub_9ce1413b.length]
}

function curator() {
    return curatorAddress
}

function killContract() {
    require msg.sender == curatorAddress
    selfdestruct(curatorAddress)
}

function _fallback() {
    revert
}

function sub_ff69ec87(?) {
    require msg.sender == curatorAddress
    curatorAddress = arg1
}

function setFundManager(address arg1) {
    require msg.sender == curatorAddress
    fundManagerAddress = arg1
}

function sub_4377cd5e(?) {
    require msg.sender == curatorAddress
    sub_9ce1413b[] = Array(len=arg1.length, data=arg1[all])
}

function sub_8753371c(?) {
    require msg.sender == fundManagerAddress
    uint256(stor5[arg1]) = not bool(uint8(stor5[arg1])) or Mask(248, 8, uint256(stor5[arg1]))
}

function sub_4ed8dc65(?) {
    idx = 0
    s = 0
    while idx < sub_463eef6e:
        mem[0] = idx
        mem[32] = 5
        if not uint8(stor5[idx]):
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 4
        mem[128] = 0
        require ext_code.size(stor4[idx])
        call stor4[idx].0xf949c5de with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return s
}

function sub_6d02f573(?) {
    idx = 0
    while idx < sub_463eef6e:
        mem[0] = idx
        mem[32] = 5
        if uint8(stor5[idx]):
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                s = sha3(6) + stor6.length + 1
                while sha3(6) + stor6.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = idx
            mem[32] = 4
            address(stor6[stor6.length].field_0) = stor4[idx]
        idx = idx + 1
        continue 
    if stor6.length:
        mem[160] = address(stor6.field_0)
        idx = 160
        s = 0
        while (32 * stor6.length) + 128 > idx:
            mem[idx + 32] = address(stor6[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor6.length) + 160] = 32
    mem[(32 * stor6.length) + 192] = stor6.length
    if Mask(251, 0, stor6.length):
        mem[(32 * stor6.length) + 224] = mem[160]
        mem[(32 * stor6.length) + 256 len floor32((32 * stor6.length) - 1)] = mem[192 len floor32((32 * stor6.length) - 1)]
    return Array(len=stor6.length, data=mem[(32 * stor6.length) + 224 len 32 * stor6.length])
}

function sub_e194136b(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == fundManagerAddress
    mem[ceil32(arg1.length) + 128 len 5627] = code.data[3468 len 5627]
    mem[ceil32(arg1.length) + 5787] = arg2
    mem[ceil32(arg1.length) + 5755] = 64
    mem[ceil32(arg1.length) + 5819] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[3468 len 5627], Array(len=address(arg2), data=arg1.length, mem[ceil32(arg1.length) + 5851 len arg1.length])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 5851] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 5883 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[3468 len 5627], Array(len=address(arg2), data=arg1.length, mem[ceil32(arg1.length) + 5851 len floor32(arg1.length) + 32])
    else:
        mem[ceil32(arg1.length) + 5851] = mem[128]
        mem[ceil32(arg1.length) + 5883 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[3468 len 5627], Array(len=address(arg2), data=arg1.length, mem[ceil32(arg1.length) + 5851 len arg1.length])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 5851] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 5883 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[3468 len 5627], Array(len=address(arg2), data=arg1.length, mem[128], mem[ceil32(arg1.length) + 5883 len floor32(arg1.length)])
    require create.new_address
    stor4[stor3] = address(create.new_address)
    uint8(stor5[stor3]) = 1
    sub_463eef6e++
}



}
