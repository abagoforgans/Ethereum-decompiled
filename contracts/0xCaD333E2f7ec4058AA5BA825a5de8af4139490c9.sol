contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        stor1 = ext_call.return_data[0] or Mask(96, 160, stor1)
        call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x1100000000000000000000000000000000000000000000000000000000000000
        require ext_call.success
    else:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.0x38cc4831 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        stor1 = ext_call.return_data[0] or Mask(96, 160, stor1)
        call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x1100000000000000000000000000000000000000000000000000000000000000
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[671 len 2204]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
address stor2;
array of uint256 ETHXBT;

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function kill() payable {
    if stor2 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) payable {
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
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
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
}

function update() payable {
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
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
    mem[356] = mem[385 len 3]
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[420] = mem[449 len 3]
        mem[548] = mem[568 len 12]
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 96, 160, 3, mem[420], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[548]
        require ext_call.success
}



}
