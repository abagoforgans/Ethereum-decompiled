contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 24 * 3600
    stor1 = 168 * 24 * 3600
    stor2 = 720 * 24 * 3600
    return code.data[42 len 3552]
}



// =====================  Runtime code  =====================


address stor3;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
  stop
}

function deposit() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    mem[420] = mem[449 len 3]
    call address(stor3).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[420])
    require ext_call.success
    mem[484] = mem[513 len 3]
    mem[612] = mem[632 len 12]
    call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 3, mem[484], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[612]
    require ext_call.success
    stor4 = ext_call.return_data[0]
}

function oraclize_query(string arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    call address(stor3).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 324 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 356 len -(arg2.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 7
    mem[ceil32(arg2.length) + 160] = 'DEVCON1' << 200
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    if arg1 != stor4:
        if arg1 == stor5:
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 192] = 0
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
               value eth.balance(this.address) wei
                 gas 0 wei
        else:
            call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
            mem[ceil32(arg2.length) + 516] = mem[ceil32(arg2.length) + 545 len 3]
            call address(stor3).getPrice(string rg1) with:
                 gas gas_remaining - 25050 wei
                args Array(len=3, data=mem[ceil32(arg2.length) + 516])
            require ext_call.success
            mem[ceil32(arg2.length) + 580] = mem[ceil32(arg2.length) + 609 len 3]
            mem[ceil32(arg2.length) + 708] = mem[ceil32(arg2.length) + 728 len 12]
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 60, 96, 160, 3, mem[ceil32(arg2.length) + 580], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[ceil32(arg2.length) + 708]
            require ext_call.success
            stor4 = ext_call.return_data[0]
    else:
        mem[64] = ceil32(arg2.length) + 224
        mem[ceil32(arg2.length) + 192] = 0
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            idx = idx + 1
            s = (10 * s) + mem[idx + 128 len 1] - 48
            continue 
        if s >= 3000:
            if arg1 == stor5:
                mem[64] = ceil32(arg2.length) + 256
                mem[ceil32(arg2.length) + 224] = 0
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
                   value eth.balance(this.address) wei
                     gas 0 wei
            else:
                call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
                mem[ceil32(arg2.length) + 548] = mem[ceil32(arg2.length) + 577 len 3]
                call address(stor3).getPrice(string rg1) with:
                     gas gas_remaining - 25050 wei
                    args Array(len=3, data=mem[ceil32(arg2.length) + 548])
                require ext_call.success
                mem[ceil32(arg2.length) + 612] = mem[ceil32(arg2.length) + 641 len 3]
                mem[ceil32(arg2.length) + 740] = mem[ceil32(arg2.length) + 760 len 12]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 60, 96, 160, 3, mem[ceil32(arg2.length) + 612], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[ceil32(arg2.length) + 740]
                require ext_call.success
                stor4 = ext_call.return_data[0]
        else:
            call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
            mem[ceil32(arg2.length) + 580] = mem[ceil32(arg2.length) + 609 len 3]
            call address(stor3).getPrice(string rg1) with:
                 gas gas_remaining - 25050 wei
                args Array(len=3, data=mem[ceil32(arg2.length) + 580])
            require ext_call.success
            mem[ceil32(arg2.length) + 676] = mem[ceil32(arg2.length) + 705 len 3]
            mem[ceil32(arg2.length) + 772] = 0, mem[ceil32(arg2.length) + 794 len 10]
            mem[ceil32(arg2.length) + 900] = 0, mem[ceil32(arg2.length) + 931 len 1]
            call address(stor3).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 128, 192, 288, 3, mem[ceil32(arg2.length) + 676], 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', mem[ceil32(arg2.length) + 772], 95, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal":        "1AAcC', 'o21EUc1jbocjssSQDzLna9Vem2UN5"}' >> 256, mem[ceil32(arg2.length) + 900]
            require ext_call.success
            stor5 = ext_call.return_data[0]
}



}
