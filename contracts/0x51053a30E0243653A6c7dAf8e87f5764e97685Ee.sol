contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = 1
    return code.data[23 len 4704]
}



// =====================  Runtime code  =====================


#
#  - retryOraclizeRequest(uint256 arg1)
#
address stor0;
address stor1;
uint256 stor1;
array of struct tasks;
mapping of uint256 oraclizeRequests;
uint256 nextId;

function oraclizeRequests(bytes32 arg1) payable {
    return oraclizeRequests[arg1]
}

function nextId() payable {
    return nextId
}

function tasks(uint256 arg1) payable {
    mem[256] = tasks[arg1][1].field_0
    idx = 256
    s = 0
    while tasks[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = tasks[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tasks[arg1].field_0, 
           Array(len=tasks[arg1][1].length, data=mem[256 len tasks[arg1][1].length + (floor32(tasks[arg1][1].length - 1) + -tasks[arg1][1].length + 32 % 32)]),
           tasks[arg1].field_512,
           tasks[arg1].field_768
}

function _fallback() payable {
  stop
}

function queuePayment(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args 'URL'
        require ext_call.success
    else:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.0x38cc4831 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args 'URL'
    require msg.value > ext_call.return_data[0]
    nextId++
    mem[ceil32(arg1.length) + 192] = '{"pair": "eth_btc", "withdrawal"'
    mem[ceil32(arg1.length) + 224] = 0x3a20220000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 256] = 2
    mem[ceil32(arg1.length) + 288] = 0x227d000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 320] = 0
    mem[ceil32(arg1.length) + 384] = 0
    mem[ceil32(arg1.length) + 416] = 0
    idx = 0
    s = 0
    while idx < 35:
        require idx < 35
        require s < arg1.length + 37
        mem[ceil32(arg1.length) + s + 704 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 35
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg1.length + 37
        mem[ceil32(arg1.length) + s + 704 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 35
    while idx < 2:
        require idx < 2
        require s < arg1.length + 37
        mem[ceil32(arg1.length) + s + 704 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 37
    while idx < 0:
        require idx < 0
        require s < arg1.length + 37
        mem[ceil32(arg1.length) + s + 704 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 384, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 37
    while idx < 0:
        require idx < 0
        require s < arg1.length + 37
        mem[ceil32(arg1.length) + s + 704 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + (32 * arg1.length + 37) + 1060] = mem[ceil32(arg1.length) + (32 * arg1.length + 37) + 1083 len 9]
    if not arg1.length + 37 % 32:
        call address(stor1).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 128, 192, 288, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000, 41, 'json(https://shapeshift.io/shift', 759659415379087944052, mem[ceil32(arg1.length) + (32 * arg1.length + 37) + 1060], arg1.length + 37, mem[ceil32(arg1.length) + 704 len arg1.length + 37]
    else:
        mem[floor32(arg1.length + 37) + ceil32(arg1.length) + (32 * arg1.length + 37) + 1124] = mem[floor32(arg1.length + 37) + ceil32(arg1.length) + (32 * arg1.length + 37) + -(arg1.length + 37 % 32) + 1156 len arg1.length + 37 % 32]
        call address(stor1).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 128, 192, 288, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000, 41, 'json(https://shapeshift.io/shift', 759659415379087944052, mem[ceil32(arg1.length) + (32 * arg1.length + 37) + 1060], arg1.length + 37, mem[ceil32(arg1.length) + 704 len floor32(arg1.length + 37)], mem[ceil32(arg1.length) + (32 * arg1.length + 37) + floor32(arg1.length + 37) + 1124]
    require ext_call.success
    tasks[stor4].field_0 = ext_call.return_data[0]
    tasks[stor4][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    tasks[stor4].field_512 = msg.value - ext_call.return_data[0]
    tasks[stor4].field_768 = block.timestamp
    oraclizeRequests[ext_call.return_data[0]] = nextId
    return 1
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.0x38cc4831 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[0] = arg1
    mem[32] = 3
    if oraclizeRequests[arg1]:
        mem[64] = ceil32(arg2.length) + 160
        mem[ceil32(arg2.length) + 128] = 0
        idx = 2
        s = 0
        s = 0
        s = 0
        while idx < 42:
            require idx < arg2.length
            require idx + 1 < arg2.length
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 102:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 87
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                        continue 
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 48
                    continue 
            if mem[idx + 128 len 1] < 48:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
                continue 
            if mem[idx + 128 len 1] > 57:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
                continue 
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 48
            continue 
        call address(s) with:
           value tasks[stor3[arg1]].field_512 wei
             gas 0 wei
        oraclizeRequests[arg1] = 0
        tasks[stor3[arg1]].field_0 = 0
        tasks[stor3[arg1]].field_256 = 0
        if 31 < tasks[stor3[arg1]][1].length:
            idx = 0
            while tasks[stor3[arg1]][1].length + 31 / 32 > idx:
                tasks[stor3[arg1]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        tasks[stor3[arg1]].field_512 = 0
        tasks[stor3[arg1]].field_768 = 0
}



}
