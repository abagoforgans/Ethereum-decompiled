contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    bool(stor1.length) = 0
    uint255(stor1.length.field_1) = 12
    Mask(248, 0, stor1.length.field_8) = 'Name Not Set' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    bool(stor1.length) = 0
    uint255(stor1.length.field_1) = 24
    Mask(248, 0, stor1.length.field_8) = 'Slot Definition v1.00.03' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[224] = 0
    mem[256] = 0
    mem[288] = 5
    mem[320] = 30
    mem[352] = 100
    s = 2
    idx = 224
    while 384 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 7
    while 7 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[384] = 0
    mem[416] = 0
    mem[448] = 5
    mem[480] = 30
    mem[512] = 125
    s = 8
    idx = 384
    while 544 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[544] = 0
    mem[576] = 0
    mem[608] = 5
    mem[640] = 30
    mem[672] = 150
    s = 14
    idx = 544
    while 704 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 19
    while 19 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[704] = 0
    mem[736] = 0
    mem[768] = 10
    mem[800] = 50
    mem[832] = 175
    s = 20
    idx = 704
    while 864 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 25
    while 25 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[864] = 0
    mem[896] = 0
    mem[928] = 10
    mem[960] = 50
    mem[992] = 250
    s = 26
    idx = 864
    while 1024 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 31
    while 31 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[1024] = 0
    mem[1056] = 0
    mem[1088] = 25
    mem[1120] = 100
    mem[1152] = 300
    s = 32
    idx = 1024
    while 1184 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 37
    while 37 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[1184] = 0
    mem[1216] = 0
    mem[1248] = 25
    mem[1280] = 100
    mem[1312] = 400
    s = 38
    idx = 1184
    while 1344 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 43
    while 43 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[1344] = 0
    mem[1376] = 2
    mem[1408] = 40
    mem[1440] = 200
    mem[1472] = 700
    s = 44
    idx = 1344
    while 1504 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 49
    while 49 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[1504] = 0
    mem[1536] = 5
    mem[1568] = 100
    mem[1600] = 500
    mem[1632] = 2000
    s = 50
    idx = 1504
    while 1664 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    # nil
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 getName;
array of struct stor7;
address stor67;
address stor68;

function GetName() {
    return getName[0 len getName.length]
}

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_bc94a91c(?) {
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) <= 0:
        return 0
    return 1
}

function SetName(string arg1) {
    require msg.sender == stor0
    getName[] = Array(len=arg1.length, data=arg1[all])
    emit NameChange(Array(len=arg1.length, data=arg1[all]));
}

function sub_2c4fb2b1(?) {
    require ext_code.size(stor68)
    call stor68.0x2c4fb2b1 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_80b45ffc(?) {
    require ext_code.size(stor67)
    call stor67.0x80b45ffc with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_1992f75d(?) {
    require ext_code.size(stor68)
    call stor68.0x1992f75d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_247e6f43(?) {
    require ext_code.size(stor67)
    call stor67.0x247e6f43 with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_584f89ab(?) {
    mem[96 len 160] = call.data[4 len 160]
    mem[256] = 0
    mem[288 len 96] = 0
    mem[416] = 0
    require ext_code.size(stor68)
    call stor68.0x2c4fb2b1 with:
         gas gas_remaining - 50 wei
    mem[384] = ext_call.return_data[0]
    require ext_call.success
    s = 0
    s = 0
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(stor68)
        call stor68.0x1992f75d with:
             gas gas_remaining - 50 wei
            args idx, 0
        require ext_call.success
        mem[388] = 0
        mem[420] = mem[96] + -ext_call.return_data[0] + 2
        require ext_code.size(stor67)
        call stor67.0x247e6f43 with:
             gas gas_remaining - 50 wei
            args 0, mem[96] + -ext_call.return_data[0] + 2
        mem[384] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] < 10
        if not stor7[ext_call.return_data[0]].field_0:
            s = 1
            while s < 5:
                mem[388] = idx
                mem[420] = s
                require ext_code.size(stor68)
                call stor68.0x1992f75d with:
                     gas gas_remaining - 50 wei
                    args idx, s
                mem[384] = ext_call.return_data[0]
                require ext_call.success
                require s < 5
                _117 = mem[(32 * s) + 96]
                mem[388] = s
                mem[420] = _117 + -ext_call.return_data[0] + 2
                require ext_code.size(stor67)
                call stor67.0x247e6f43 with:
                     gas gas_remaining - 50 wei
                    args s, _117 + -ext_call.return_data[0] + 2
                mem[384] = ext_call.return_data[0]
                require ext_call.success
                require s - 1 < 4
                mem[(32 * s - 1) + 256] = ext_call.return_data[0]
                s = s + 1
                continue 
            t = 0
            s = 0
            while s < 4:
                require s < 4
                require mem[(32 * s) + 256] < 10
                if stor7[mem[(32 * s) + 256]].field_0:
                    t = t + 1
                    s = s + 1
                    continue 
                require s < 4
                if mem[(32 * s) + 256] == ext_call.return_data[0]:
                    t = t + 1
                    s = s + 1
                    continue 
                require ext_call.return_data[0] < 10
                if not stor7[ext_call.return_data[0]].field_8:
                    if t > 0:
                        require ext_call.return_data[0] < 10
                        require t < 5
                s = 0
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            require ext_call.return_data[0] < 10
            if not stor7[ext_call.return_data[0]].field_8:
                if t > 0:
                    require ext_call.return_data[0] < 10
                    require t < 5
            s = 0
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        s = 1
        while s < 5:
            mem[388] = idx
            mem[420] = s
            require ext_code.size(stor68)
            call stor68.0x1992f75d with:
                 gas gas_remaining - 50 wei
                args idx, s
            mem[384] = ext_call.return_data[0]
            require ext_call.success
            require s < 5
            _118 = mem[(32 * s) + 96]
            mem[388] = s
            mem[420] = _118 + -ext_call.return_data[0] + 2
            require ext_code.size(stor67)
            call stor67.0x247e6f43 with:
                 gas gas_remaining - 50 wei
                args s, _118 + -ext_call.return_data[0] + 2
            mem[384] = ext_call.return_data[0]
            require ext_call.success
            require s - 1 < 4
            mem[(32 * s - 1) + 256] = ext_call.return_data[0]
            s = s + 1
            continue 
        t = 0
        s = 0
        while s < 4:
            require s < 4
            require mem[(32 * s) + 256] < 10
            if stor7[mem[(32 * s) + 256]].field_0:
                t = t + 1
                s = s + 1
                continue 
            require s < 4
            require mem[(32 * s) + 256] < 10
            if not stor7[mem[(32 * s) + 256]].field_8:
                require s < 4
                t = t + 1
                s = s + 1
                continue 
            require ext_call.return_data[0] < 10
            if not stor7[ext_call.return_data[0]].field_8:
                if t > 0:
                    require ext_call.return_data[0] < 10
                    require t < 5
            s = 1
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require ext_call.return_data[0] < 10
        if not stor7[ext_call.return_data[0]].field_8:
            if t > 0:
                require ext_call.return_data[0] < 10
                require t < 5
        s = 1
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 0
}



}
