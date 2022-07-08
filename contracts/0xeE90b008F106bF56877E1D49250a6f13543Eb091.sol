contract main {




// =====================  Runtime code  =====================


const sub_d2508046(?) = 'opm'

const sub_f3bc843e(?) = Array(len=10, data=code.data[12056 len 10])


address resolverAddress;
mapping of uint8 stor1;
address sub_98dbe72cAddress;
address sub_f436ad73Address;
address sub_c5e3dfd8Address;
mapping of uint8 stor99;

function resolver() {
    return resolverAddress
}

function getEthereumAddress() {
    return sub_98dbe72cAddress
}

function sub_35163b43(?) {
    return sub_c5e3dfd8Address
}

function sub_98dbe72c(?) {
    return sub_98dbe72cAddress
}

function sub_c5e3dfd8(?) {
    return sub_c5e3dfd8Address
}

function sub_f436ad73(?) {
    return sub_f436ad73Address
}

function _fallback() payable {
    revert
}

function sub_1aacfeba(?) {
    require stor1[Mask(80, 176, code.data[12034 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_c5e3dfd8Address = arg1
}

function sub_64d4df04(?) {
    require stor1[Mask(80, 176, code.data[12034 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_f436ad73Address = arg1
}

function setEthereumAddress(address arg1) {
    require stor1[Mask(80, 176, code.data[12034 len 32]) >> 176][address(msg.sender)]
    require arg1
    sub_98dbe72cAddress = arg1
}

function sub_54b55cf0(?) {
    require stor1[Mask(80, 176, code.data[12034 len 32]) >> 176][address(msg.sender)]
    stor1['opm'][address(arg1)] = 1
    emit RoleAdded(address(arg1), 'opm');
}

function getTokenDecimals(address arg1) {
    if ext_code.size(arg1):
        staticcall arg1 with:
             funct Mask(32, 224, sha3('decimals()')) >> 224
                gas gas_remaining wei
        if ext_call.success == 1:
            return ext_call.return_data[0]
    return 18
}

function sub_1b808d0f(?) {
    require stor1['opm'][address(msg.sender)]
    create contract with 0 wei
                    code: code.data[3892 len 3723], address(arg1), arg2, arg3, arg4, address(arg5), arg6, arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_23c47015(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    create contract with 0 wei
                    code: code.data[7615 len 4419], msg.sender, arg2, 160, 224, address(arg1), 15, 'Bank Debt Token', 3, 'BDT'
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_ad58295f(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    create contract with 0 wei
                    code: code.data[7615 len 4419], msg.sender, arg2, 160, 224, address(arg1), 17, 'Bank Equity Token', 3, 'BET'
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_e53719cf(?) {
    require ext_code.size(sub_f436ad73Address)
    call sub_f436ad73Address.isValidContract(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
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



}
