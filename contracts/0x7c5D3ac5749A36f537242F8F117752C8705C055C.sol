contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    stor0 = 0xfa5186a0af28454ba31bfc7b1100880b01b2051d
    mem[128] = '????????????????????????????????'
    mem[160] = '????????????????????????????????'
    mem[192] = '????????????????????????????????'
    mem[224] = '?????????????????????????'
    stor1.length = 243
    s = 0
    idx = 128
    while 249 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
    return code.data[789 len 1326]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 ETHXBT;

function ETHXBT() payable {
    return uint256(ETHXBT[0 len ETHXBT.length])
}

function kill() payable {
    selfdestruct(0x47a8033cc6d6ca2ed5044674fd421f44884de8)
}

function _fallback() payable {
  stop
}

function update() payable {
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
}

function sub_a5298d54(?) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    call stor0.0x4c773795 with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < ETHXBT.length
        if not bool(ETHXBT.length):
            ETHXBT.length = mem[idx + 128 len 1] * 256^(-idx + 31) or !(255 * 256^(-idx + 31)) and ETHXBT.length
        else:
            mem[0] = 1
            uint256(ETHXBT[0.03125 / idx]) = mem[idx + 128 len 1] * 256^(-(idx % 32) + 31) or !(255 * 256^(-(idx % 32) + 31)) and uint256(ETHXBT[0.03125 / idx])
        idx = idx + 1
        continue 
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
}



}
