contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of struct stor2;

function _fallback() payable {
    revert
}

function sub_aad39650(?) {
    require stor2[arg1].field_768 <= 2
    require stor2[arg1].field_768 == 1
    require msg.sender == stor2[arg1].field_776
    require stor2[arg1].field_768 <= 2
    stor2[arg1].field_768 = 2
    emit 0xceb0192b: arg1
}

function sub_2fac5ab3(?) {
    require msg.sender == stor0
    stor1++
    emit 0xd05262f8: stor1
    stor2[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[stor1].field_256 = stor1
    stor2[stor1].field_512 = arg2
    stor2[stor1].field_768 = 0
    stor2[stor1].field_1024 = 0
    stor2[stor1].field_776 = msg.sender
    stor2[stor1].field_1024 = 0
    stor2[stor1].field_1280 = 0
}

function sub_7654706b(?) payable {
    require stor2[arg1].field_768 <= 2
    require not stor2[arg1].field_768
    require msg.value >= stor2[arg1].field_512
    stor2[arg1].field_1024 = msg.sender
    stor2[arg1].field_768 = 1
    call stor2[arg1].field_776 with:
       value stor2[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > stor2[arg1].field_512:
        call stor2[arg1].field_1024 with:
           value msg.value - stor2[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x64d89867: arg1
}

function fetchItem(uint256 arg1) {
    mem[128] = stor2[arg1].field_0
    idx = 128
    s = 0
    while stor2[arg1].length + 96 > idx:
        mem[idx + 32] = stor2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor2[arg1].field_768 <= 2
    if stor2[arg1].field_768:
        if stor2[arg1].field_768 != 1:
            if stor2[arg1].field_768 != 2:
                mem[ceil32(stor2[arg1].length) + 352 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
                mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 352] = stor2[arg1].length
                mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 384 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
                return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 352 len (2 * stor2[arg1].length) + -ceil32(stor2[arg1].length) + 32]), 
                       stor2[arg1].field_256,
                       stor2[arg1].field_512,
                       stor2[arg1].length + 224,
                       stor2[arg1].field_768,
                       stor2[arg1].field_1024
            mem[ceil32(stor2[arg1].length) + 416 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
            mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 416] = 11
            mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 448] = Mask(88, 0, ' = Key Sent')
            return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 416 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].length + 224,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024
        if stor2[arg1].field_768 != 2:
            mem[ceil32(stor2[arg1].length) + 416 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
            mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 416] = 9
            mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 448] = Mask(72, 0, ' = Rented')
            return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 416 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].length + 224,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024
        mem[ceil32(stor2[arg1].length) + 480 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
        mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 480] = 11
        mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 512] = Mask(88, 0, ' = Key Sent')
        return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 480 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].length + 224,
               stor2[arg1].field_768,
               stor2[arg1].field_1024
    if stor2[arg1].field_768 != 1:
        if stor2[arg1].field_768 != 2:
            mem[ceil32(stor2[arg1].length) + 416 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
            mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 416] = 11
            mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 448] = Mask(88, 0, ' = For Rent')
            return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 416 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
                   stor2[arg1].field_256,
                   stor2[arg1].field_512,
                   stor2[arg1].length + 224,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024
        mem[ceil32(stor2[arg1].length) + 480 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
        mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 480] = 11
        mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 512] = Mask(88, 0, ' = Key Sent')
        return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 480 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].length + 224,
               stor2[arg1].field_768,
               stor2[arg1].field_1024
    if stor2[arg1].field_768 != 2:
        mem[ceil32(stor2[arg1].length) + 480 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
        mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 480] = 9
        mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 512] = Mask(72, 0, ' = Rented')
        return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 480 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].length + 224,
               stor2[arg1].field_768,
               stor2[arg1].field_1024
    mem[ceil32(stor2[arg1].length) + 544 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
    mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 544] = 11
    mem[stor2[arg1].length + ceil32(stor2[arg1].length) + 576] = Mask(88, 0, ' = Key Sent')
    return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + 544 len stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
           stor2[arg1].field_256,
           stor2[arg1].field_512,
           stor2[arg1].length + 224,
           stor2[arg1].field_768,
           stor2[arg1].field_1024
}



}
