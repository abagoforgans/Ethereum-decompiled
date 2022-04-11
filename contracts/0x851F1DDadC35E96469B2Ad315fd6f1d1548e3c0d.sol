contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 7996]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len 7250] = code.data[703 len 7250]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7410] = this.address
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7442] = arg1
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7474] = arg2
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7538] = arg4
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7602] = arg6
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7506] = 224
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7634] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 7570] = arg3.length + 256
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7666] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len arg5.length + arg3.length + 32]), arg4 << 248, arg3.length + 256
                else:
                    mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7730 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len floor32(arg5.length) + arg3.length + 64]), arg4 << 248, arg3.length + 256
            else:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7730 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len arg5.length + arg3.length + 32]), arg4 << 248, arg3.length + 256
                else:
                    mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7730 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len arg3.length + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg5.length) + arg3.length + 7730 len floor32(arg5.length)]), arg4 << 248, arg3.length + 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7666] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 7698 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 7570] = floor32(arg3.length) + 288
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 7730 len arg5.length]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7730] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7762 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 7730 len floor32(arg5.length) + 32]), arg4 << 248, floor32(arg3.length) + 288
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7730] = mem[ceil32(arg3.length) + 160]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7762 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 7730 len arg5.length]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7730] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7762 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 7762 len floor32(arg5.length)]), arg4 << 248, floor32(arg3.length) + 288
    else:
        mem[ceil32(arg3.length) + ceil32(arg5.length) + 7666] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 7570] = arg3.length + 256
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7666] = arg5.length
            if arg5.length:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7730 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
            if not arg5.length % 32:
                create contract with 0 wei
                                code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len arg5.length + arg3.length]), arg4 << 248, arg3.length + 256
            else:
                mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7730 len arg5.length % 32]
                create contract with 0 wei
                                code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len floor32(arg5.length) + arg3.length + 32]), arg4 << 248, arg3.length + 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7666] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 7698 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 7570] = floor32(arg3.length) + 288
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7698] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len arg5.length + floor32(arg3.length) + 32]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7730] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7762 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len floor32(arg5.length) + floor32(arg3.length) + 64]), arg4 << 248, floor32(arg3.length) + 288
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7730] = mem[ceil32(arg3.length) + 160]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7762 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len arg5.length + floor32(arg3.length) + 32]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7730] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7762 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[703 len 7250], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 7698 len floor32(arg3.length) + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 7762 len floor32(arg5.length)]), arg4 << 248, floor32(arg3.length) + 288
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeController(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
