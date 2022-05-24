contract main {




// =====================  Runtime code  =====================


#
#  - beginPwn()
#
address fomo3dAddress;
address stor2;

function fomo3d() {
    return fomo3dAddress
}

function _fallback() payable {
  stop
}

function setFomo(address arg1) {
    require msg.sender == stor2
    fomo3dAddress = arg1
}

function withdraw() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
