contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = address(code.data[1900 len 32])
    require ext_code.size(stor0)
    call stor0.0x5993ef53 with:
         gas gas_remaining - 710 wei
        args 1, 'figlet'
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[488 len 1412]
}



// =====================  Runtime code  =====================


const sub_3c0aef30(?) = 1

const sub_c878f958(?) = 'figlet'


address stor0;

function _fallback() payable {
    revert
}

function sub_8cd213b9(?) payable {
    require ext_code.size(stor0)
    call stor0.submit(string rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_10a9f201(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == stor0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0x68d2eaa3: arg1, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, arg2
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
        emit 0x68d2eaa3: arg1, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 288 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, arg2
    return 1
}



}
