contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    require not msg.value
    stor0 = code.data[3369 len 20]
    stor3 = code.data[3389 len 32]
    stor1 = code.data[3433 len 20]
    stor2 = msg.sender
    stor4 = 10^17
    require ext_code.size(address(code.data[3357 len 32]))
    call address(code.data[3357 len 32]).owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claim(address rg1) with:
         gas gas_remaining - 50 wei
        args stor2
    require ext_call.success
    return code.data[425 len 2932]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 fee;
uint256 stor5;
uint256 stor6;
mapping of uint256 donations;

function donations(bytes32 arg1) {
    return donations[arg1]
}

function fee() {
    return fee
}

function config() {
    return stor0, stor3, stor2, fee, stor1
}

function stats() {
    return stor6, stor5, eth.balance(this.address)
}

function donate(bytes32 arg1) payable {
    donations[arg1] += msg.value
    emit donation(msg.value, arg1);
}

function setFee(uint256 arg1) {
    require stor2 == msg.sender
    emit feeChanged(fee, arg1);
    fee = arg1
}

function setDefaultResolver(address arg1) {
    require stor2 == msg.sender
    emit defaultResolverChanged(stor1, arg1);
    stor1 = arg1
}

function _fallback() payable {
    donations[0] += msg.value
    emit donation(bytes32 rg1, uint256 rg2):
                  msg.value,
    emit 0x0: msg.value
}

function withdraw(address arg1, uint256 arg2) {
    require stor2 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit didWithdraw(address(arg1), arg2);
}

function setAdmin(address arg1) {
    require stor2 == msg.sender
    emit adminChanged(stor2, arg1);
    stor2 = arg1
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claim(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.resolver(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args stor3
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setAddr(bytes32 rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args stor3, stor2
    require ext_call.success
}

function register(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require arg1.length >= 4
    require arg1.length <= 20
    s = 0
    idx = 0
    s = 97
    while idx < arg1.length:
        if mem[s + 31 len 1] < 97:
            if mem[s + 31 len 1] < 48:
                require 45 == mem[s + 31 len 1]
            else:
                if mem[s + 31 len 1] > 57:
                    require 45 == mem[s + 31 len 1]
        else:
            if mem[s + 31 len 1] > 122:
                if mem[s + 31 len 1] < 48:
                    require 45 == mem[s + 31 len 1]
                else:
                    if mem[s + 31 len 1] > 57:
                        require 45 == mem[s + 31 len 1]
        s = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 1
        continue 
    require msg.value >= fee
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3(stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    require ext_call.success
    require not ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    call stor0.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.setResolver(bytes32 rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args sha3(stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), stor1
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.setAddr(bytes32 rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args sha3(stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), msg.sender
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.setOwner(bytes32 rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args sha3(stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), msg.sender
    require ext_call.success
    stor5 += msg.value
    stor6++
    donations[stor3][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))] += msg.value
    emit nameRegistered(msg.sender, msg.value, sha3(stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])));
    emit donation(msg.value, sha3(stor3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])));
}



}
