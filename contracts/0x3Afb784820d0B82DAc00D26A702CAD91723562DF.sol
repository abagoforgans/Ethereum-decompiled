contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    call address(stor1).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data='URL')
    call address(stor1) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call address(stor1).0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    stor3 = ext_call.return_data[0]
    return code.data[917 len 3299]
}



// =====================  Runtime code  =====================


address stor1;
address sub_6a67498eAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function sub_6a67498e(?) payable {
    return address(sub_6a67498eAddress)
}

function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function deposit() payable {
    call stor1.0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data='URL')
    require ext_call.success
    call stor1 with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call stor1.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    stor3 = ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    mem[64] = ceil32(arg2.length) + 192
    mem[ceil32(arg2.length) + 160] = 0
    call stor1.0x4c773795 with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    if arg1 != stor3:
        if arg1 == stor5:
            s = 0
            s = 0
            s = 0
            idx = 2
            while idx < 42:
                require idx < arg2.length
                require idx + 1 < arg2.length
                if mem[idx + 128 len 1] >= 97:
                    if mem[idx + 128 len 1] <= 102:
                        if mem[idx + 129 len 1] >= 97:
                            if mem[idx + 129 len 1] <= 102:
                                s = mem[idx + 129 len 1] - 87
                                s = mem[idx + 128 len 1] - 87
                                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                                idx = idx + 2
                                continue 
                        if mem[idx + 129 len 1] < 48:
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                            idx = idx + 2
                            continue 
                        if mem[idx + 129 len 1] > 57:
                            s = mem[idx + 129 len 1]
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                            idx = idx + 2
                            continue 
                        s = mem[idx + 129 len 1] - 48
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                        idx = idx + 2
                        continue 
                if mem[idx + 128 len 1] < 48:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                            idx = idx + 2
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        idx = idx + 2
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        idx = idx + 2
                        continue 
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                    idx = idx + 2
                    continue 
                if mem[idx + 128 len 1] > 57:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1]
                            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                            idx = idx + 2
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        idx = idx + 2
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                        idx = idx + 2
                        continue 
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
                    idx = idx + 2
                    continue 
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 48
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                        idx = idx + 2
                        continue 
                if mem[idx + 129 len 1] < 48:
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                    idx = idx + 2
                    continue 
                if mem[idx + 129 len 1] > 57:
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
                    idx = idx + 2
                    continue 
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
                idx = idx + 2
                continue 
            uint256(stor2) = s or Mask(96, 160, uint256(stor2))
            call address(sub_6a67498eAddress) with:
               value eth.balance(this.address) wei
                 gas 0 wei
    else:
        stor4 = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    stor4 = 10 * stor4
                    require idx < arg2.length
                    stor4 = stor4 + mem[idx + 128 len 1] - 48
            idx = idx + 1
            continue 
        call stor1.0x524f3889 with:
             gas gas_remaining - 25050 wei
            args Array(len=3, data='URL')
        require ext_call.success
        call stor1 with:
           value ext_call.return_data[0] wei
             gas 0 wei
        if stor4 >= 2000:
            call stor1.0xadf59f99 with:
                 gas gas_remaining - 25050 wei
                args 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
            stor3 = ext_call.return_data[0]
        else:
            call stor1.0xa4c8a1c1 with:
                 gas gas_remaining - 25050 wei
                args 0, 128, 192, 288, 3, 'URL', 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', 88, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal": "1AAcCo21EUc1', 'jbocjssSQDzLna9Vem2UN5"}'
            stor5 = ext_call.return_data[0]
}



}
