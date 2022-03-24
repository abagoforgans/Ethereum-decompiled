contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor4;

function _fallback() payable {
    stor4 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[74 len 972]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
mapping of struct sub_c8025dda;
address stor4;

function sub_c8025dda(?) payable {
    require sub_c8025dda[arg1 << 192].field_0 == arg1
    return sub_c8025dda[arg1 << 192].field_256
}

function sub_48ea7127(?) payable {
    require msg.sender == stor0
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_d55e6975(?) payable {
    require stor0 == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function _fallback() payable {
    call stor4.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) payable {
    require stor0 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 0 wei
    return bool(ext_call.success)
}

function sub_0f90488c(?) payable {
    require msg.sender == address(stor2)
    if not sub_c8025dda[arg1 << 192].field_0:
        sub_c8025dda[arg1 << 192].field_0 = arg1
        sub_c8025dda[arg1 << 192].field_64 = Mask(192, 0, arg2)
        sub_c8025dda[arg1 << 192].field_224 = uint32(arg1)
        sub_c8025dda[arg1 << 192].field_256 = arg3
}

function sub_99cc9168(?) payable {
    require msg.sender == address(stor1)
    if sub_c8025dda[arg1 << 192].field_0:
        require sub_c8025dda[arg1 << 192].field_0 == arg1
        if sub_c8025dda[arg1 << 192].field_256 > 0:
            if sub_c8025dda[arg1 << 192].field_256 <= eth.balance(this.address):
                call sub_c8025dda[arg1 << 192].field_64 with:
                   value sub_c8025dda[arg1 << 192].field_256 wei
                     gas 0 wei
                if ext_call.success:
                    sub_c8025dda[arg1 << 192].field_256 = 0
            else:
                call sub_c8025dda[arg1 << 192].field_64 with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if ext_call.success:
                    sub_c8025dda[arg1 << 192].field_256 -= eth.balance(this.address)
}



}
