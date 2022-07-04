contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 price;
uint256 sub_e5e5d5b9;
uint256 ethCap;
uint8 stor4;

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function ethCap() {
    return ethCap
}

function sub_7ef076d6(?) {
    return bool(stor4)
}

function price() {
    return price
}

function sub_e5e5d5b9(?) {
    return sub_e5e5d5b9
}

function _fallback() payable {
    revert
}

function sub_79eed15f(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    sub_e5e5d5b9 = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    price = arg1
}

function sub_fec70b99(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor4 = uint8(arg1)
}

function setEthCap(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    ethCap = arg1
}

function addAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function withdraw() {
    require msg.sender
    require stor0[address(msg.sender)]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eda0e579(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if price != msg.value:
        revert with 0, 'Must send price in ether to deploy'
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg3.length + 1
    if arg3.length + 1:
        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg3.length + 1] = code.data[5714 len 32 * arg3.length + 1]
    if arg4.length + 1:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + 224 len 32 * arg4.length + 1] = code.data[5714 len 32 * arg4.length + 1]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require idx < arg3.length + 1
        mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + 140 len 20]
        require idx < arg4.length
        require idx < arg4.length + 1
        mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + 224] = mem[(32 * idx) + (32 * arg3.length) + 160]
        idx = idx + 1
        continue 
    require arg3.length < arg3.length + 1
    mem[(64 * arg3.length) + (32 * arg4.length) + 192] = 0x7669249af307ac50beda41993d28f1dc4975484e
    require arg4.length < arg4.length + 1
    mem[(64 * arg4.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 224] = 20
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 224 len 7939] = code.data[11864 len 7939]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8163] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8195] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8291] = arg5
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8323] = arg6
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8227] = 192
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8355] = arg3.length + 1
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8387 len floor32(arg3.length + 1)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32(arg3.length + 1)]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 8259] = (32 * arg3.length + 1) + 224
    mem[(64 * arg3.length + 1) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg4.length + 1) + 8387] = arg4.length + 1
    mem[(64 * arg3.length + 1) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg4.length + 1) + 8419 len floor32(arg4.length + 1)] = mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + 224 len floor32(arg4.length + 1)]
    create contract with 0 wei
                    code: code.data[11864 len 7939], address(arg1), address(arg2), Array(len=address(arg6), data=arg3.length + 1, mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32(arg3.length + 1)], mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + floor32(arg3.length + 1) + 8387 len (32 * arg3.length + 1) + (32 * arg4.length + 1) + -floor32(arg3.length + 1) + 32]), (32 * arg3.length + 1) + 224, arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + 352 len floor32(arg3.length + 1)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32(arg3.length + 1)]
    mem[(64 * arg3.length + 1) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg4.length + 1) + 352] = arg4.length + 1
    mem[(64 * arg3.length + 1) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg4.length + 1) + 384 len floor32(arg4.length + 1)] = mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + 224 len floor32(arg4.length + 1)]
    emit 0x75210417: Array(len=arg3.length + 1, data=mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32(arg3.length + 1)], mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + 1) + (32 * arg4.length + 1) + floor32(arg3.length + 1) + 352 len (32 * arg3.length + 1) + (32 * arg4.length + 1) + -floor32(arg3.length + 1) + 32]), (32 * arg3.length + 1) + 128, arg5, address(create.new_address), arg2, arg1
    return address(create.new_address)
}

function sub_0a335e42(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if price != msg.value:
        revert with 0, 'Must send price in ether to deploy'
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg2.length + 1
    if not arg2.length + 1:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192] = arg3.length + 1
        if not arg3.length + 1:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < arg3.length
                require idx < arg3.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224] = mem[(32 * idx) + (32 * arg2.length) + 160]
                idx = idx + 1
                continue 
            require arg2.length < arg2.length + 1
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 0x7669249af307ac50beda41993d28f1dc4975484e
            require arg3.length < arg3.length + 1
            mem[(64 * arg3.length) + (32 * arg2.length) + (32 * arg2.length + 1) + 224] = 20
            if stor4:
                idx = 0
                while idx < mem[(32 * arg2.length) + 128]:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                    idx = idx + 1
                    continue 
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _784 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                create contract with 0 wei
                                code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _784) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _1076 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1076) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
            else:
                if arg4:
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = arg4
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = arg2.length + 1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * arg2.length + 1) + 192
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6566] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6598 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=arg2.length + 1, mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 6566 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 192, arg4
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 352] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 384 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    emit 0x2b325538: Array(len=arg2.length + 1, data=mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 352 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 128, arg4, address(create.new_address), arg1
                else:
                    idx = 0
                    while idx < mem[(32 * arg2.length) + 128]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                        idx = idx + 1
                        continue 
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _789 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _789) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _1081 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1081) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len 32 * arg3.length + 1] = code.data[5714 len 32 * arg3.length + 1]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < arg3.length
                require idx < arg3.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224] = mem[(32 * idx) + (32 * arg2.length) + 160]
                idx = idx + 1
                continue 
            require arg2.length < arg2.length + 1
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 0x7669249af307ac50beda41993d28f1dc4975484e
            require arg3.length < arg3.length + 1
            mem[(64 * arg3.length) + (32 * arg2.length) + (32 * arg2.length + 1) + 224] = 20
            if stor4:
                idx = 0
                while idx < mem[(32 * arg2.length) + 128]:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                    idx = idx + 1
                    continue 
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _792 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                create contract with 0 wei
                                code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _792) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _1084 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1084) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
            else:
                if arg4:
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = arg4
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = arg2.length + 1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * arg2.length + 1) + 192
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6566] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6598 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=arg2.length + 1, mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 6566 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 192, arg4
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 352] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 384 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    emit 0x2b325538: Array(len=arg2.length + 1, data=mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 352 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 128, arg4, address(create.new_address), arg1
                else:
                    idx = 0
                    while idx < mem[(32 * arg2.length) + 128]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                        idx = idx + 1
                        continue 
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _797 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _797) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _1089 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1089) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg2.length + 1] = code.data[5714 len 32 * arg2.length + 1]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192] = arg3.length + 1
        if not arg3.length + 1:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < arg3.length
                require idx < arg3.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224] = mem[(32 * idx) + (32 * arg2.length) + 160]
                idx = idx + 1
                continue 
            require arg2.length < arg2.length + 1
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 0x7669249af307ac50beda41993d28f1dc4975484e
            require arg3.length < arg3.length + 1
            mem[(64 * arg3.length) + (32 * arg2.length) + (32 * arg2.length + 1) + 224] = 20
            if stor4:
                idx = 0
                while idx < mem[(32 * arg2.length) + 128]:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                    idx = idx + 1
                    continue 
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _800 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                create contract with 0 wei
                                code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _800) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _1092 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1092) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
            else:
                if arg4:
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = arg4
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = arg2.length + 1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * arg2.length + 1) + 192
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6566] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6598 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=arg2.length + 1, mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 6566 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 192, arg4
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 352] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 384 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    emit 0x2b325538: Array(len=arg2.length + 1, data=mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 352 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 128, arg4, address(create.new_address), arg1
                else:
                    idx = 0
                    while idx < mem[(32 * arg2.length) + 128]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                        idx = idx + 1
                        continue 
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _805 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _805) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _1097 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1097) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len 32 * arg3.length + 1] = code.data[5714 len 32 * arg3.length + 1]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < arg3.length
                require idx < arg3.length + 1
                mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224] = mem[(32 * idx) + (32 * arg2.length) + 160]
                idx = idx + 1
                continue 
            require arg2.length < arg2.length + 1
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 0x7669249af307ac50beda41993d28f1dc4975484e
            require arg3.length < arg3.length + 1
            mem[(64 * arg3.length) + (32 * arg2.length) + (32 * arg2.length + 1) + 224] = 20
            if stor4:
                idx = 0
                while idx < mem[(32 * arg2.length) + 128]:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                    idx = idx + 1
                    continue 
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _808 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                create contract with 0 wei
                                code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _808) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                _1100 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1100) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
            else:
                if arg4:
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = arg4
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = arg2.length + 1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * arg2.length + 1) + 192
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6566] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 6598 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=arg2.length + 1, mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 6566 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 192, arg4
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)]
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 352] = arg3.length + 1
                    mem[(64 * arg2.length + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length + 1) + 384 len floor32(arg3.length + 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(arg3.length + 1)]
                    emit 0x2b325538: Array(len=arg2.length + 1, data=mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + floor32(arg2.length + 1) + 352 len (32 * arg2.length + 1) + (32 * arg3.length + 1) + -floor32(arg2.length + 1) + 32]), (32 * arg2.length + 1) + 128, arg4, address(create.new_address), arg1
                else:
                    idx = 0
                    while idx < mem[(32 * arg2.length) + 128]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = sub_e5e5d5b9
                        idx = idx + 1
                        continue 
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224 len 6150] = code.data[5714 len 6150]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6374] = arg1
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6470] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6502] = arg5
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6406] = 160
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6534] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6438] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _813 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6598 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    create contract with 0 wei
                                    code: code.data[5714 len 6150], address(arg1), Array(len=address(arg5), data=mem[(32 * arg2.length) + (32 * arg3.length) + 160], mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 6566 len (32 * _813) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 192, ethCap
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 288] = ethCap
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 224] = 96
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 352] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    _1105 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192]
                    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 384 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + 192])]
                    emit 0x2b325538: 96, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 256], ethCap, mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg2.length + 1) + (32 * arg3.length + 1) + 320 len (32 * _1105) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 64], address(create.new_address), arg1
    return address(create.new_address)
}



}
