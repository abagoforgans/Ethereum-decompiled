contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address managerAddress;
address newManagerAddress;
address sub_fcdcb756Address;

function newManager() {
    return newManagerAddress
}

function manager() {
    return managerAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_fcdcb756(?) {
    return sub_fcdcb756Address
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function transferManager(address arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    newManagerAddress = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    owner = newOwner
    newOwner = 0
    emit TransferOwnership(owner, newOwner);
}

function acceptManager() {
    require msg.sender == newManagerAddress
    managerAddress = newManagerAddress
    newManagerAddress = 0
    emit TransferManager(managerAddress, newManagerAddress);
}

function sub_592b99e4(?) {
    require msg.sender == owner
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.0x48ff15b3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e6588cb(?) {
    require msg.sender == owner
    require arg1
    require arg2 >= 0
    if not arg2:
        require ext_code.size(sub_fcdcb756Address)
        call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        require 10^18 * arg2 / arg2 == 10^18
        if not 10^18 * arg2 / 100:
            require ext_code.size(sub_fcdcb756Address)
            call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            require arg3 * 10^18 * arg2 / 100 / 10^18 * arg2 / 100 == arg3
            require ext_code.size(sub_fcdcb756Address)
            call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3 * 10^18 * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2968c307(?) {
    require msg.sender == owner
    require 7359726 * 10^16 * arg1 / 7359726 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x6a5276b270fb3f7ccb3a7b0c1aed032cc126842f, 7359726 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 1119188 * 10^16 * arg1 / 1119188 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x1f7343b230279156d6e684a3238154a82c25a925, 1119188 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 918593 * 10^16 * arg1 / 918593 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x81b4750e99f0dd20c82124a6eb2378f2efaf690c, 918593 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 440706 * 10^16 * arg1 / 440706 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x69d8332428843c9addb90b40f4c143ca121d392d, 440706 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 2940725 * 10^12 * 3600 * arg1 / 2940725 * 10^12 * 3600 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x3c32cca134058932c9961a954f4a976fd276ce27, 2940725 * 10^12 * 3600 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 739985 * 10^16 * arg1 / 739985 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x51bce06b070452fe4135b85cad781eead4a74ae, 739985 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 166894 * 10^16 * arg1 / 166894 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7336ef1e05e126218de716c9279b94b89f3a8c1f, 166894 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 166894 * 10^16 * arg1 / 166894 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x6c38ea2bd77b49459944cf76cdb8280888e7743e, 166894 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 966004 * 10^16 * arg1 / 966004 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xd928890165c552cb242341914829dfc1bd176696, 966004 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 553015 * 10^16 * arg1 / 553015 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfb8f181ab607a6f1620f9f695fb2a98901017a2, 553015 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 71605 * 10^16 * arg1 / 71605 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf223e82c93b87f00055f96af20b9884753d01ad5, 71605 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 187162 * 10^16 * arg1 / 187162 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5a35a5a160853780c05e5d537f2f7a2e47470a46, 187162 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 5250 * 10^18 * arg1 / 5250 * 10^18 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xceb7db4a605a0bcae61e3ebeb59a65592378baeb, 5250 * 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 263561 * 10^17 * arg1 / 263561 * 10^17 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf2da43a129a5fd7f1d7c9ac81f2516f3ddce0541, 263561 * 10^17 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 6100363 * 10^16 * arg1 / 6100363 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe9b72ac31d54dda26d8142e9a072522c4a1d37e9, 6100363 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 10174 * 10^15 * 3600 * arg1 / 10174 * 10^15 * 3600 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x45bff0c18a93d584e404341487703af4a81ec669, 10174 * 10^15 * 3600 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 23988 * 10^17 * arg1 / 23988 * 10^17 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x3bbb475f7e3c01953cfee2a67ee1022c3a630796, 23988 * 10^17 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 910951 * 10^16 * arg1 / 910951 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xd18dd363fbc14e4747f94fff04b10a34ed3e24d1, 910951 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 586537 * 10^16 * arg1 / 586537 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf4722a77daf83830ef80367cd1d500affec954d, 586537 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 155045 * 10^16 * arg1 / 155045 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe28abdf3b9985e15cffec5e8c6d996a3393659eb, 155045 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 451825 * 10^12 * 3600 * arg1 / 451825 * 10^12 * 3600 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xc98c838d075b523f94378197fedc1c814eaafcbb, 451825 * 10^12 * 3600 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 18924 * 10^16 * arg1 / 18924 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x39c53265c09a4cffe64b5e2bca30ac35c41f4d2, 18924 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 451605 * 10^16 * arg1 / 451605 * 10^16 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9f93d8dfbd9cd19f829267231742bbe4b134f157, 451605 * 10^16 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require 1518 * 10^18 * arg1 / 1518 * 10^18 == arg1
    require ext_code.size(sub_fcdcb756Address)
    call sub_fcdcb756Address.freezeAmount(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x2be5c3e401b103eeb0c35e9cda2f60fcb6d1b173, 1518 * 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
