contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 6684]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function sub_c0ebbdf1(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 6100] = code.data[541 len 6100]
    mem[(32 * arg3.length) + (32 * arg2.length) + 6260] = arg1
    mem[(32 * arg3.length) + (32 * arg2.length) + 6356] = arg4
    mem[(32 * arg3.length) + (32 * arg2.length) + 6292] = 128
    mem[(32 * arg3.length) + (32 * arg2.length) + 6388] = arg2.length
    if not Mask(251, 0, arg2.length):
        mem[(32 * arg3.length) + (32 * arg2.length) + 6324] = (32 * arg2.length) + 160
        mem[(64 * arg2.length) + (32 * arg3.length) + 6420] = arg3.length
        if Mask(251, 0, arg3.length):
            mem[(64 * arg2.length) + (32 * arg3.length) + 6452] = mem[(32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 6484 len floor32((32 * arg3.length) - 1)] = mem[(32 * arg2.length) + 192 len floor32((32 * arg3.length) - 1)]
        create contract with 0 wei
                        code: code.data[541 len 6100], arg1, Array(len=address(arg4), data=arg2.length, mem[(32 * arg3.length) + (32 * arg2.length) + 6420 len (32 * arg3.length) + (32 * arg2.length) + 32]), (32 * arg2.length) + 160
    else:
        mem[(32 * arg3.length) + (32 * arg2.length) + 6420] = mem[128]
        mem[(32 * arg3.length) + (32 * arg2.length) + 6452 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
        mem[(32 * arg3.length) + (32 * arg2.length) + 6324] = (32 * arg2.length) + 160
        mem[(64 * arg2.length) + (32 * arg3.length) + 6420] = arg3.length
        if Mask(251, 0, arg3.length):
            mem[(64 * arg2.length) + (32 * arg3.length) + 6452] = mem[(32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 6484 len floor32((32 * arg3.length) - 1)] = mem[(32 * arg2.length) + 192 len floor32((32 * arg3.length) - 1)]
        create contract with 0 wei
                        code: code.data[541 len 6100], arg1, Array(len=address(arg4), data=arg2.length, mem[128], mem[(32 * arg3.length) + (32 * arg2.length) + 6452 len (32 * arg3.length) + (32 * arg2.length)]), (32 * arg2.length) + 160
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwner(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
