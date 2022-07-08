contract main {




// =====================  Runtime code  =====================


const sub_d1676089(?) = 10000

const sub_f3bc843e(?) = Array(len=10, data=code.data[6090 len 10])


address resolverAddress;
mapping of uint8 stor1;
address sub_44b515c8Address;
address sub_c0924b80Address;
address tokenManagerAddress;
address sub_ee26c576Address;
uint256 contractsLength;
mapping of address contracts;
mapping of uint8 stor8;
address sub_85d1ed51Address;
address stor10;
uint256 sub_1e9ce31b;
uint256 sub_d575fe64;
address sub_47225692Address;
mapping of uint8 stor99;

function resolver() {
    return resolverAddress
}

function isValidContract(address arg1) {
    return bool(stor8[address(arg1)])
}

function sub_1e9ce31b(?) {
    return sub_1e9ce31b
}

function tokenManager() {
    return tokenManagerAddress
}

function contractsLength() {
    return contractsLength
}

function sub_44b515c8(?) {
    return sub_44b515c8Address
}

function sub_47225692(?) {
    return sub_47225692Address
}

function contracts(uint256 arg1) {
    require contractsLength > arg1
    return contracts[arg1]
}

function sub_85d1ed51(?) {
    return sub_85d1ed51Address
}

function sub_9ff78c30(?) {
    return sub_ee26c576Address
}

function sub_c0924b80(?) {
    return sub_c0924b80Address
}

function sub_d575fe64(?) {
    return sub_d575fe64
}

function sub_ee26c576(?) {
    return sub_ee26c576Address
}

function _fallback() payable {
    revert
}

function sub_5a804400(?) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1 > 0
    sub_1e9ce31b = arg1
}

function sub_21b139c1(?) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_ee26c576Address = arg1
}

function sub_28fb72d1(?) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_85d1ed51Address = arg1
}

function sub_5531e095(?) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_47225692Address = arg1
}

function sub_cab1344e(?) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_c0924b80Address = arg1
}

function setResolver(address arg1) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1
    resolverAddress = arg1
}

function setTokenManager(address arg1) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1
    tokenManagerAddress = arg1
}

function setCommissionPercentage(uint256 arg1) {
    require stor1[Mask(80, 176, code.data[6068 len 32]) >> 176][address(msg.sender)]
    require arg1 < 10000
    sub_d575fe64 = arg1
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_854cee29(?) payable {
    mem[384 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 2397] = sub_44b515c8Address
    create contract with 0 wei
                    code: code.data[4087 len 1981], resolverAddress, sub_44b515c8Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor8[address(create.new_address)] = 1
    contracts[stor6] = address(create.new_address)
    require contractsLength + 1 >= contractsLength
    contractsLength++
    mem[ceil32(arg2.length) + 384 len 256] = code.data[4087 len 256]
    mem[ceil32(arg2.length) + 2372 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 384 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xe8f0e1ca with:
           value msg.value wei
             gas gas_remaining wei
            args sub_ee26c576Address, sub_c0924b80Address, tokenManagerAddress, sub_85d1ed51Address, sub_47225692Address, address(arg1), msg.sender, stor10 >> 1792, call.data[132] >> 1280, call.data[4 len 128], 608, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 384 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 2372] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2404 len arg2.length % 32]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xe8f0e1ca with:
           value msg.value wei
             gas gas_remaining wei
            args sub_ee26c576Address, sub_c0924b80Address, tokenManagerAddress, sub_85d1ed51Address, sub_47225692Address, address(arg1), msg.sender, stor10 >> 1792, call.data[132] >> 1280, call.data[4 len 128], 608, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 384 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 2372 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'preinit() call on Bank failed.'
    emit 0x39220307: address(create.new_address), arg1
    return address(create.new_address)
}



}
