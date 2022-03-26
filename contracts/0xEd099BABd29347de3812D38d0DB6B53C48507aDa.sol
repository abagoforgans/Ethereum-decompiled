contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 5495]




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
address stor1;
array of uint256 myUsername;
mapping of address address;
mapping of struct stor4;

function myUsername() {
    return myUsername[address(msg.sender)][0 len myUsername[address(msg.sender)].length]
}

function getAddress(string arg1) {
    return address[arg1[all]]
}

function getUsername(address arg1) {
    return myUsername[address(arg1)][0 len myUsername[address(arg1)].length]
}

function _fallback() {
    revert 
}

function keybasePubURL(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 256] = 'https://'
    mem[ceil32(arg1.length) + 288] = 16
    mem[ceil32(arg1.length) + 320] = '.keybase.pub/eth'
    mem[ceil32(arg1.length) + 352] = 0
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 448] = 0
    idx = 0
    s = 0
    while idx < 8:
        require idx < 8
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 8
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 8
    while idx < 16:
        require idx < 16
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 24
    while idx < 0:
        require idx < 0
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 24
    while idx < 0:
        require idx < 0
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 736 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=arg1.length + 24, data=mem[ceil32(arg1.length) + 736 len arg1.length + 24])
}

function claim(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 3
    mem[ceil32(arg1.length) + 320] = 'https://'
    mem[ceil32(arg1.length) + 352] = 16
    mem[ceil32(arg1.length) + 384] = '.keybase.pub/eth'
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 480] = 0
    mem[ceil32(arg1.length) + 512] = 0
    idx = 0
    s = 0
    while idx < 8:
        require idx < 8
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 800 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 8
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 800 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 8
    while idx < 16:
        require idx < 16
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 800 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 24
    while idx < 0:
        require idx < 0
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 800 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 480, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 480, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 24
    while idx < 0:
        require idx < 0
        require s < arg1.length + 24
        mem[ceil32(arg1.length) + s + 800 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 512, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 512, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor1 = address(ext_call.return_data[0])
    mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 868] = mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 897 len 3]
    require ext_code.size(stor1)
    call stor1.getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data=mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 868])
    require ext_call.success
    if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
        stor4[0][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor4[0].field_256 = msg.sender
        stor4[0].field_416 = 0
        stor4[0].field_512 = 0
    else:
        mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 932] = mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 961 len 3]
        mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 996 len arg1.length + 24] = mem[ceil32(arg1.length) + 800 len arg1.length + 24]
        if not arg1.length + 24 % 32:
            require ext_code.size(stor1)
            call stor1.query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9050 wei
                args 0, 96, 160, 3, mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 932], arg1.length + 24, mem[ceil32(arg1.length) + 800 len arg1.length + 24]
        else:
            mem[floor32(arg1.length + 24) + ceil32(arg1.length) + (32 * arg1.length + 24) + 996] = mem[floor32(arg1.length + 24) + ceil32(arg1.length) + (32 * arg1.length + 24) + -(arg1.length + 24 % 32) + 1028 len arg1.length + 24 % 32]
            require ext_code.size(stor1)
            call stor1.query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9050 wei
                args 0, 96, 160, 3, mem[ceil32(arg1.length) + (32 * arg1.length + 24) + 932], arg1.length + 24, mem[ceil32(arg1.length) + 800 len arg1.length + 24], mem[ceil32(arg1.length) + (32 * arg1.length + 24) + arg1.length + 1020 len floor32(arg1.length + 24) + -arg1.length + 8]
        require ext_call.success
        stor4[ext_call.return_data[0]][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor4[ext_call.return_data[0]].field_256 = msg.sender
        stor4[ext_call.return_data[0]].field_416 = 0
        stor4[ext_call.return_data[0]].field_512 = 0
}



}
