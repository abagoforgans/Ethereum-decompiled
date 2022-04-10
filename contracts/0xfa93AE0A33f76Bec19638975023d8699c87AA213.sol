contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = msg.sender
    require not msg.value
    return code.data[93 len 3197]
}



// =====================  Runtime code  =====================


const name = 'SrCoin'

const symbol = 'SRC'


address sub_84455a40Address;
address sub_8eb167b4Address;
address owner;

function sub_84455a40(?) {
    return sub_84455a40Address
}

function owner() {
    return owner
}

function sub_8eb167b4(?) {
    return sub_8eb167b4Address
}

function _fallback() payable {
    revert
}

function disown() {
    require msg.sender == owner
    owner = 0
}

function sub_006e9b03(?) {
    require msg.sender == owner
    sub_84455a40Address = arg1
    sub_8eb167b4Address = arg2
}

function totalSupply() {
    require ext_code.size(sub_8eb167b4Address)
    call sub_8eb167b4Address.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(sub_8eb167b4Address)
    call sub_8eb167b4Address.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(sub_8eb167b4Address)
    call sub_8eb167b4Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    delegate sub_84455a40Address with:
       funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require delegate.return_code
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('transfer(address,uint256,bytes)'))
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    if not arg3.length:
        if not arg3.length % 32:
            delegate sub_84455a40Address with:
               funct (Mask(32, 224, sha3('transfer(address,uint256,bytes)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, mem[ceil32(arg3.length) + 196 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 196] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 228 len arg3.length % 32]
            delegate sub_84455a40Address with:
               funct (Mask(32, 224, sha3('transfer(address,uint256,bytes)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, mem[ceil32(arg3.length) + 196 len floor32(arg3.length) + 32]
    else:
        mem[ceil32(arg3.length) + 196] = mem[128]
        mem[ceil32(arg3.length) + 228 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            delegate sub_84455a40Address with:
               funct (Mask(32, 224, sha3('transfer(address,uint256,bytes)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, mem[ceil32(arg3.length) + 196 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 196] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 228 len arg3.length % 32]
            delegate sub_84455a40Address with:
               funct (Mask(32, 224, sha3('transfer(address,uint256,bytes)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(arg1), arg2, mem[128], mem[ceil32(arg3.length) + 228 len floor32(arg3.length)]
    require delegate.return_code
}



}
