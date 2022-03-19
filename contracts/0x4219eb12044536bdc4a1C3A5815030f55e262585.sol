contract main {


// =======================  Init code  ======================


uint128 stor1; offset 160
address stor1;
uint256 stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor3 = block.number
    stor4 = 3000
    stor5 = block.number
    stor6 = 10
    stor7 = 2000
    stor8 = 5
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    if address(stor1.field_0) != 0:
        call address(stor1.field_0).endRound() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[7990 len 3666], stor6, stor7, stor8
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    if address(stor2.field_0) != 0:
        call address(stor2.field_0).processProposals() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[11656 len 1621]
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    stor5 += stor4
    return code.data[470 len 7520]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
  stop
}

function sub_0b2c5ddb(?) payable {
    require msg.sender == address(stor2.field_0)
    stor6 = arg1
}

function sub_cb3ece6a(?) payable {
    require address(stor1.field_0) == msg.sender
    create contract with 0 wei
                    code: code.data[6367 len 1153], 32, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
}

function sub_00f5f421(?) payable {
    call address(stor0.field_0).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] != 0:
        mem[256] = Mask(112, 72, 'account has a valid POI') >> 72, mem[279 len 9]
        return Array(len=23, data=mem[256])
    mem[320] = mem[351 len 1]
    return Array(len=33, data='account does not have a valid PO', 'I', mem[320])
}

function sub_3bd7cf0b(?) payable {
    require block.number >= stor5
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    if address(stor1.field_0) != 0:
        call address(stor1.field_0).endRound() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[1080 len 3666], stor6, stor7, stor8
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    if address(stor2.field_0) != 0:
        call address(stor2.field_0).processProposals() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[4746 len 1621]
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    stor5 += stor4
}



}
