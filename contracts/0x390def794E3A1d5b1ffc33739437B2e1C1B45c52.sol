contract main {




// =====================  Runtime code  =====================


address coordinatorAddress;
mapping of struct userRating;

function coordinator() {
    return coordinatorAddress
}

function getUserRating(address arg1) {
    return userRating[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function setCoordinator(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'multiSigAdmin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    coordinatorAddress = arg1
}

function sub_1a36017a(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'listingRewards'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require userRating[address(arg1)].field_0 + 1 >= userRating[address(arg1)].field_0
    userRating[address(arg1)].field_0++
}

function sub_bb00397c(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'listingRewards'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require 1 <= userRating[address(arg1)].field_0
    if userRating[address(arg1)].field_256:
        require userRating[address(arg1)].field_256
        require -userRating[address(arg1)].field_256 + (userRating[address(arg1)].field_0 * userRating[address(arg1)].field_256) / userRating[address(arg1)].field_256 == userRating[address(arg1)].field_0 - 1
    require arg2 >= 0
    require userRating[address(arg1)].field_0
    userRating[address(arg1)].field_256 = arg2 - userRating[address(arg1)].field_256 + (userRating[address(arg1)].field_0 * userRating[address(arg1)].field_256) / userRating[address(arg1)].field_0
    emit 0xebfaf012: address(arg1), arg2 - userRating[address(arg1)].field_256 + (userRating[address(arg1)].field_0 * userRating[address(arg1)].field_256) / userRating[address(arg1)].field_0
}



}
