contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3493]




// =====================  Runtime code  =====================


mapping of uint256 tokens;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    call 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_00bad67d(?) {
    require ext_code.size(arg1)
    call arg1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3, ext_call.return_data[32]
    require ext_call.success
}

function sub_bc80dd82(?) payable {
    require msg.value + tokens[0][address(msg.sender)] >= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + tokens[0][address(msg.sender)]);
    require ext_code.size(arg1)
    call arg1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg2), msg.value
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.swapEtherToToken(address arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args address(arg2), ext_call.return_data[32]
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_4d9e6ff9(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 164] = arg4
    mem[(32 * arg3.length) + 196] = arg5
    mem[(32 * arg3.length) + 132] = 96
    mem[(32 * arg3.length) + 228] = arg3.length
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg2)
    call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg4 wei
         gas gas_remaining - 9710 wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require 4 < arg3.length
    _37 = mem[256]
    mem[(32 * arg3.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg3.length) + 196] = ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(_37), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg3.length) + 128 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    require 4 < arg3.length
    _45 = mem[256]
    mem[(32 * arg3.length) + 132] = arg1
    mem[(32 * arg3.length) + 164] = ext_call.return_data[0]
    require ext_code.size(address(_45))
    call address(_45).approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require 4 < arg3.length
    require ext_code.size(arg1)
    call arg1.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(mem[256]), ext_call.return_data[0], ext_call.return_data[32]
    require ext_call.success
}

function sub_f4c43c5d(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg3.length
    if not arg4:
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg2), arg4
        require ext_call.success
        mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg2)
        call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5
    else:
        require ext_code.size(arg1)
        call arg1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args address(mem[128]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg4
        mem[(32 * arg3.length) + 128 len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        require 0 < arg3.length
        require ext_code.size(arg1)
        call arg1.swapEtherToToken(address arg1, uint256 arg2) with:
           value arg4 wei
             gas gas_remaining - 9710 wei
            args address(mem[128]), ext_call.return_data[32]
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require 0 < arg3.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg2), ext_call.return_data[0]
        require ext_call.success
        mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg2)
        call arg2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), ext_call.return_data[0], arg5
    require ext_call.success
}



}
