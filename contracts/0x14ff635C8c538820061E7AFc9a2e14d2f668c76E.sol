contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address managerAddress;
address newManagerAddress;
uint256 soldToken;
address tokenRewardAddress;
address sub_13113df0Address;
mapping of uint256 sub_5627df88;

function sub_13113df0(?) {
    return sub_13113df0Address
}

function newManager() {
    return newManagerAddress
}

function manager() {
    return managerAddress
}

function sub_5627df88(?) {
    return sub_5627df88[arg1]
}

function soldToken() {
    return soldToken
}

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
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

function sub_4ab5da2a(?) {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.freezeFrom(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAvailableToken() {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a2b1b066(?) {
    require msg.sender == owner
    require sub_13113df0Address
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_13113df0Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_b933057f(?) {
    require msg.sender == owner
    require arg1
    require arg2 >= 0
    if not arg2:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_5627df88[address(arg1)] >= sub_5627df88[address(arg1)]
        require soldToken >= soldToken
    else:
        require 10^18 * arg2 / arg2 == 10^18
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 10^18 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (10^18 * arg2) + sub_5627df88[address(arg1)] >= sub_5627df88[address(arg1)]
        sub_5627df88[address(arg1)] += 10^18 * arg2
        require (10^18 * arg2) + soldToken >= soldToken
        soldToken += 10^18 * arg2
}

function sub_85f0e047(?) {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x6a5276b270fb3f7ccb3a7b0c1aed032cc126842f, 989482 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x6a5276b270fb3f7ccb3a7b0c1aed032cc126842f] + 989482 * 10^18 >= sub_5627df88[0x6a5276b270fb3f7ccb3a7b0c1aed032cc126842f]
    sub_5627df88[0x6a5276b270fb3f7ccb3a7b0c1aed032cc126842f] += 989482 * 10^18
    require soldToken + 989482 * 10^18 >= soldToken
    soldToken += 989482 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x1f7343b230279156d6e684a3238154a82c25a925, 5848 * 10^16 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x1f7343b230279156d6e684a3238154a82c25a925] + (5848 * 10^16 * 3600) >= sub_5627df88[0x1f7343b230279156d6e684a3238154a82c25a925]
    sub_5627df88[0x1f7343b230279156d6e684a3238154a82c25a925] += 5848 * 10^16 * 3600
    require soldToken + (5848 * 10^16 * 3600) >= soldToken
    soldToken += 5848 * 10^16 * 3600
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x81b4750e99f0dd20c82124a6eb2378f2efaf690c, 5848 * 10^16 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x81b4750e99f0dd20c82124a6eb2378f2efaf690c] + (5848 * 10^16 * 3600) >= sub_5627df88[0x81b4750e99f0dd20c82124a6eb2378f2efaf690c]
    sub_5627df88[0x81b4750e99f0dd20c82124a6eb2378f2efaf690c] += 5848 * 10^16 * 3600
    require soldToken + (5848 * 10^16 * 3600) >= soldToken
    soldToken += 5848 * 10^16 * 3600
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x69d8332428843c9addb90b40f4c143ca121d392d, 5848 * 10^16 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x69d8332428843c9addb90b40f4c143ca121d392d] + (5848 * 10^16 * 3600) >= sub_5627df88[0x69d8332428843c9addb90b40f4c143ca121d392d]
    sub_5627df88[0x69d8332428843c9addb90b40f4c143ca121d392d] += 5848 * 10^16 * 3600
    require soldToken + (5848 * 10^16 * 3600) >= soldToken
    soldToken += 5848 * 10^16 * 3600
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x3c32cca134058932c9961a954f4a976fd276ce27, 126317 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x3c32cca134058932c9961a954f4a976fd276ce27] + 126317 * 10^18 >= sub_5627df88[0x3c32cca134058932c9961a954f4a976fd276ce27]
    sub_5627df88[0x3c32cca134058932c9961a954f4a976fd276ce27] += 126317 * 10^18
    require soldToken + 126317 * 10^18 >= soldToken
    soldToken += 126317 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x51bce06b070452fe4135b85cad781eead4a74ae, 126317 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x51bce06b070452fe4135b85cad781eead4a74ae] + 126317 * 10^18 >= sub_5627df88[0x51bce06b070452fe4135b85cad781eead4a74ae]
    sub_5627df88[0x51bce06b070452fe4135b85cad781eead4a74ae] += 126317 * 10^18
    require soldToken + 126317 * 10^18 >= soldToken
    soldToken += 126317 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x7336ef1e05e126218de716c9279b94b89f3a8c1f, 84212 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x7336ef1e05e126218de716c9279b94b89f3a8c1f] + 84212 * 10^18 >= sub_5627df88[0x7336ef1e05e126218de716c9279b94b89f3a8c1f]
    sub_5627df88[0x7336ef1e05e126218de716c9279b94b89f3a8c1f] += 84212 * 10^18
    require soldToken + 84212 * 10^18 >= soldToken
    soldToken += 84212 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x6c38ea2bd77b49459944cf76cdb8280888e7743e, 84212 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x6c38ea2bd77b49459944cf76cdb8280888e7743e] + 84212 * 10^18 >= sub_5627df88[0x6c38ea2bd77b49459944cf76cdb8280888e7743e]
    sub_5627df88[0x6c38ea2bd77b49459944cf76cdb8280888e7743e] += 84212 * 10^18
    require soldToken + 84212 * 10^18 >= soldToken
    soldToken += 84212 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd928890165c552cb242341914829dfc1bd176696, 63159 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xd928890165c552cb242341914829dfc1bd176696] + 63159 * 10^18 >= sub_5627df88[0xd928890165c552cb242341914829dfc1bd176696]
    sub_5627df88[0xd928890165c552cb242341914829dfc1bd176696] += 63159 * 10^18
    require soldToken + 63159 * 10^18 >= soldToken
    soldToken += 63159 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xfb8f181ab607a6f1620f9f695fb2a98901017a2, 63159 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xfb8f181ab607a6f1620f9f695fb2a98901017a2] + 63159 * 10^18 >= sub_5627df88[0xfb8f181ab607a6f1620f9f695fb2a98901017a2]
    sub_5627df88[0xfb8f181ab607a6f1620f9f695fb2a98901017a2] += 63159 * 10^18
    require soldToken + 63159 * 10^18 >= soldToken
    soldToken += 63159 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf223e82c93b87f00055f96af20b9884753d01ad5, 42106 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xf223e82c93b87f00055f96af20b9884753d01ad5] + 42106 * 10^18 >= sub_5627df88[0xf223e82c93b87f00055f96af20b9884753d01ad5]
    sub_5627df88[0xf223e82c93b87f00055f96af20b9884753d01ad5] += 42106 * 10^18
    require soldToken + 42106 * 10^18 >= soldToken
    soldToken += 42106 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x5a35a5a160853780c05e5d537f2f7a2e47470a46, 125000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x5a35a5a160853780c05e5d537f2f7a2e47470a46] + 125000 * 10^18 >= sub_5627df88[0x5a35a5a160853780c05e5d537f2f7a2e47470a46]
    sub_5627df88[0x5a35a5a160853780c05e5d537f2f7a2e47470a46] += 125000 * 10^18
    require soldToken + 125000 * 10^18 >= soldToken
    soldToken += 125000 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xceb7db4a605a0bcae61e3ebeb59a65592378baeb, 525000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xceb7db4a605a0bcae61e3ebeb59a65592378baeb] + 525000 * 10^18 >= sub_5627df88[0xceb7db4a605a0bcae61e3ebeb59a65592378baeb]
    sub_5627df88[0xceb7db4a605a0bcae61e3ebeb59a65592378baeb] += 525000 * 10^18
    require soldToken + 525000 * 10^18 >= soldToken
    soldToken += 525000 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf2da43a129a5fd7f1d7c9ac81f2516f3ddce0541, 535610 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xf2da43a129a5fd7f1d7c9ac81f2516f3ddce0541] + 535610 * 10^18 >= sub_5627df88[0xf2da43a129a5fd7f1d7c9ac81f2516f3ddce0541]
    sub_5627df88[0xf2da43a129a5fd7f1d7c9ac81f2516f3ddce0541] += 535610 * 10^18
    require soldToken + 535610 * 10^18 >= soldToken
    soldToken += 535610 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xe9b72ac31d54dda26d8142e9a072522c4a1d37e9, 491777 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xe9b72ac31d54dda26d8142e9a072522c4a1d37e9] + 491777 * 10^18 >= sub_5627df88[0xe9b72ac31d54dda26d8142e9a072522c4a1d37e9]
    sub_5627df88[0xe9b72ac31d54dda26d8142e9a072522c4a1d37e9] += 491777 * 10^18
    require soldToken + 491777 * 10^18 >= soldToken
    soldToken += 491777 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x45bff0c18a93d584e404341487703af4a81ec669, 10174 * 10^17 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x45bff0c18a93d584e404341487703af4a81ec669] + (10174 * 10^17 * 3600) >= sub_5627df88[0x45bff0c18a93d584e404341487703af4a81ec669]
    sub_5627df88[0x45bff0c18a93d584e404341487703af4a81ec669] += 10174 * 10^17 * 3600
    require soldToken + (10174 * 10^17 * 3600) >= soldToken
    soldToken += 10174 * 10^17 * 3600
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x3bbb475f7e3c01953cfee2a67ee1022c3a630796, 239880 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x3bbb475f7e3c01953cfee2a67ee1022c3a630796] + 239880 * 10^18 >= sub_5627df88[0x3bbb475f7e3c01953cfee2a67ee1022c3a630796]
    sub_5627df88[0x3bbb475f7e3c01953cfee2a67ee1022c3a630796] += 239880 * 10^18
    require soldToken + 239880 * 10^18 >= soldToken
    soldToken += 239880 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd18dd363fbc14e4747f94fff04b10a34ed3e24d1, 910951 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xd18dd363fbc14e4747f94fff04b10a34ed3e24d1] + 910951 * 10^18 >= sub_5627df88[0xd18dd363fbc14e4747f94fff04b10a34ed3e24d1]
    sub_5627df88[0xd18dd363fbc14e4747f94fff04b10a34ed3e24d1] += 910951 * 10^18
    require soldToken + 910951 * 10^18 >= soldToken
    soldToken += 910951 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf4722a77daf83830ef80367cd1d500affec954d, 586537 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xf4722a77daf83830ef80367cd1d500affec954d] + 586537 * 10^18 >= sub_5627df88[0xf4722a77daf83830ef80367cd1d500affec954d]
    sub_5627df88[0xf4722a77daf83830ef80367cd1d500affec954d] += 586537 * 10^18
    require soldToken + 586537 * 10^18 >= soldToken
    soldToken += 586537 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xe28abdf3b9985e15cffec5e8c6d996a3393659eb, 155045 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xe28abdf3b9985e15cffec5e8c6d996a3393659eb] + 155045 * 10^18 >= sub_5627df88[0xe28abdf3b9985e15cffec5e8c6d996a3393659eb]
    sub_5627df88[0xe28abdf3b9985e15cffec5e8c6d996a3393659eb] += 155045 * 10^18
    require soldToken + 155045 * 10^18 >= soldToken
    soldToken += 155045 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x39c53265c09a4cffe64b5e2bca30ac35c41f4d2, 18924 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x39c53265c09a4cffe64b5e2bca30ac35c41f4d2] + 18924 * 10^18 >= sub_5627df88[0x39c53265c09a4cffe64b5e2bca30ac35c41f4d2]
    sub_5627df88[0x39c53265c09a4cffe64b5e2bca30ac35c41f4d2] += 18924 * 10^18
    require soldToken + 18924 * 10^18 >= soldToken
    soldToken += 18924 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x9f93d8dfbd9cd19f829267231742bbe4b134f157, 451605 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x9f93d8dfbd9cd19f829267231742bbe4b134f157] + 451605 * 10^18 >= sub_5627df88[0x9f93d8dfbd9cd19f829267231742bbe4b134f157]
    sub_5627df88[0x9f93d8dfbd9cd19f829267231742bbe4b134f157] += 451605 * 10^18
    require soldToken + 451605 * 10^18 >= soldToken
    soldToken += 451605 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x2be5c3e401b103eeb0c35e9cda2f60fcb6d1b173, 151800 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0x2be5c3e401b103eeb0c35e9cda2f60fcb6d1b173] + 151800 * 10^18 >= sub_5627df88[0x2be5c3e401b103eeb0c35e9cda2f60fcb6d1b173]
    sub_5627df88[0x2be5c3e401b103eeb0c35e9cda2f60fcb6d1b173] += 151800 * 10^18
    require soldToken + 151800 * 10^18 >= soldToken
    soldToken += 151800 * 10^18
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xc98c838d075b523f94378197fedc1c814eaafcbb, 111450 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5627df88[0xc98c838d075b523f94378197fedc1c814eaafcbb] + 111450 * 10^18 >= sub_5627df88[0xc98c838d075b523f94378197fedc1c814eaafcbb]
    sub_5627df88[0xc98c838d075b523f94378197fedc1c814eaafcbb] += 111450 * 10^18
    require soldToken + 111450 * 10^18 >= soldToken
    soldToken += 111450 * 10^18
}



}
