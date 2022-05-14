contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[19153 len 20]
    return code.data[123 len 19018]
}



// =====================  Runtime code  =====================


const sub_a1d19361(?) = 1


address adminAddress;
address contributorsAddress;
address sub_a6896878Address;
address sub_74e2b63cAddress;
address sub_7dfc099bAddress;
address sub_aa4f1dcdAddress;
address proposalsAddress;
address votesAddress;

function getVotes() {
    return votesAddress
}

function sub_16cbb01a(?) {
    return sub_7dfc099bAddress
}

function sub_35f32a05(?) {
    return sub_74e2b63cAddress
}

function sub_554fbbcd(?) {
    return sub_a6896878Address
}

function sub_55ef20e6(?) {
    return proposalsAddress
}

function getProposals() {
    return proposalsAddress
}

function contributors() {
    return contributorsAddress
}

function sub_74e2b63c(?) {
    return sub_74e2b63cAddress
}

function sub_7dfc099b(?) {
    return sub_7dfc099bAddress
}

function sub_7eff7b06(?) {
    return sub_aa4f1dcdAddress
}

function sub_a6896878(?) {
    return sub_a6896878Address
}

function sub_aa4f1dcd(?) {
    return sub_aa4f1dcdAddress
}

function getContributors() {
    return contributorsAddress
}

function votes() {
    return votesAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_39004b27(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        votesAddress = arg1
}

function sub_a35b44de(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        proposalsAddress = arg1
}

function sub_43fe86cf(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        sub_a6896878Address = arg1
}

function sub_51c5cfc0(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        sub_74e2b63cAddress = arg1
}

function setAdmin(address arg1) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        adminAddress = arg1
}

function sub_7aa2caef(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        contributorsAddress = arg1
}

function sub_9a937089(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        sub_aa4f1dcdAddress = arg1
}

function sub_aaeead4f(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
    else:
        sub_7dfc099bAddress = arg1
}

function sub_efbef75a(?) {
    require ext_code.size(proposalsAddress)
    call proposalsAddress.0xefbef75a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_55293334(?) {
    require ext_code.size(proposalsAddress)
    call proposalsAddress.0xc90525f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_ec89a2cd(?) {
    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0xec89a2cd with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_3e107e6d(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0x3e107e6d with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_761cd589(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0x761cd589 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_de190c5c(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0xde190c5c with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_f4cd5be7(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0xf4cd5be7 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_9ae17cea(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0x9ae17cea with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function isExpired(uint256 arg1) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0xd9548e53 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_8702038d(?) {
    require ext_code.size(sub_74e2b63cAddress)
    call sub_74e2b63cAddress.getValue(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args 'acceptanceThreshold'
    require ext_call.success
    require ext_code.size(proposalsAddress)
    call proposalsAddress.0xefbef75a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0] >= ext_call.return_data[0]
}

function sub_3e67021b(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0x3e107e6d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require delegate.return_code
    if not delegate.return_data[0]:
        emit 0x824de912: msg.sender
    else:
        require ext_code.size(0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f)
        delegate 0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f.0x3e67021b with:
             gas gas_remaining - 710 wei
            args arg1
        require delegate.return_code
        emit 0x211c91c3: arg1, msg.sender, delegate.return_data[0], 0, delegate.return_data[32]
}

function sub_a3be6a43(?) {
    require ext_code.size(sub_74e2b63cAddress)
    call sub_74e2b63cAddress.getModerator() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        emit 0x595834bc: msg.sender, ext_call.return_data[12 len 20]
    else:
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0xab80aa0e with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0x36df3186 with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] * arg2 / 100
        require ext_call.success
        emit 0x2c51f045: (ext_call.return_data[0] * arg2 / 100), arg1
}

function sub_d40e7614(?) {
    require ext_code.size(sub_74e2b63cAddress)
    call sub_74e2b63cAddress.getModerator() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        emit 0x595834bc: msg.sender, ext_call.return_data[12 len 20]
    else:
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0x58e52e6e with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0x32a4b4c7 with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] * arg2 / 100
        require ext_call.success
        emit 0xdf7065b1: (ext_call.return_data[0] * arg2 / 100), arg1
}

function sub_2f0f9607(?) {
    require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
    delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0x761cd589 with:
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    if not delegate.return_data[0]:
        emit 0x663f01a2: arg1, msg.sender
    else:
        require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
        delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0xf4cd5be7 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require delegate.return_code
        if not delegate.return_data[0]:
            emit 0xbaecc912: arg1, msg.sender
        else:
            require ext_code.size(0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f)
            delegate 0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f.0x2f0f9607 with:
                 gas gas_remaining - 710 wei
                args arg1, arg2
            require delegate.return_code
            if delegate.return_data[0] > 0:
                emit 0xb76b17e7: arg2, delegate.return_data[32], arg1, delegate.return_data[0]
            emit 0x211c91c3: arg2, msg.sender, delegate.return_data[32], arg1, delegate.return_data[64]
}

function sub_5bcb11bb(?) {
    require ext_code.size(sub_74e2b63cAddress)
    call sub_74e2b63cAddress.getModerator() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        emit 0x595834bc: msg.sender, ext_call.return_data[12 len 20]
    else:
        require ext_code.size(sub_74e2b63cAddress)
        call sub_74e2b63cAddress.getModerator() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            emit 0x595834bc: msg.sender, ext_call.return_data[12 len 20]
        else:
            require ext_code.size(contributorsAddress)
            call contributorsAddress.0x58e52e6e with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(contributorsAddress)
            call contributorsAddress.0x32a4b4c7 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 100 * ext_call.return_data[0] / 100
            require ext_call.success
            emit 0xdf7065b1: (100 * ext_call.return_data[0] / 100), arg1
        require ext_code.size(sub_74e2b63cAddress)
        call sub_74e2b63cAddress.getModerator() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            emit 0x595834bc: msg.sender, ext_call.return_data[12 len 20]
        else:
            require ext_code.size(contributorsAddress)
            call contributorsAddress.0xab80aa0e with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(contributorsAddress)
            call contributorsAddress.0x36df3186 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 100 * ext_call.return_data[0] / 100
            require ext_call.success
            emit 0x2c51f045: (100 * ext_call.return_data[0] / 100), arg1
}

function withdraw(uint256 arg1) {
    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0xec89a2cd with:
         gas gas_remaining - 710 wei
        args msg.sender
    require delegate.return_code
    require ext_code.size(sub_aa4f1dcdAddress)
    call sub_aa4f1dcdAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args sub_7dfc099bAddress
    require ext_call.success
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x2486228b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0x5567192aae6f8eab5939a86a890fc0dc4de101d8)
    delegate 0x5567192aae6f8eab5939a86a890fc0dc4de101d8.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, ext_call.return_data[0]
    require delegate.return_code
    require ext_call.return_data[0]
    require ext_code.size(sub_74e2b63cAddress)
    call sub_74e2b63cAddress.getBlacklist(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require not ext_call.return_data[0]
    if delegate.return_data[0] < delegate.return_data[0] / ext_call.return_data[0]:
        emit 0xa3fa05d1: delegate.return_data[0] / ext_call.return_data[0], delegate.return_data[0], msg.sender
        return 0
    if not arg1:
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0x2486228b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_aa4f1dcdAddress)
        call sub_aa4f1dcdAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args sub_7dfc099bAddress
        require ext_call.success
        emit 0x15366432: delegate.return_data[0] / ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.sender
        return 0
    require ext_code.size(sub_7dfc099bAddress)
    call sub_7dfc099bAddress.0x110a3ec3 with:
         gas gas_remaining - 710 wei
        args msg.sender, delegate.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0xe45493d0: (delegate.return_data[0] / ext_call.return_data[0]), msg.sender
        return 0
    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x32a4b4c7 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require delegate.return_code
    emit 0x3f8f630c: (delegate.return_data[0] / ext_call.return_data[0]), msg.sender
    return 1
}

function sub_51d67898(?) {
    if adminAddress != msg.sender:
        emit 0x7403387d: msg.sender
        return 0
    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0xec89a2cd with:
         gas gas_remaining - 710 wei
        args arg2
    require delegate.return_code
    require ext_code.size(sub_aa4f1dcdAddress)
    call sub_aa4f1dcdAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args sub_7dfc099bAddress
    require ext_call.success
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x2486228b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0x5567192aae6f8eab5939a86a890fc0dc4de101d8)
    delegate 0x5567192aae6f8eab5939a86a890fc0dc4de101d8.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, ext_call.return_data[0]
    require delegate.return_code
    require ext_call.return_data[0]
    require ext_code.size(sub_74e2b63cAddress)
    call sub_74e2b63cAddress.getBlacklist(address arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require not ext_call.return_data[0]
    if delegate.return_data[0] < delegate.return_data[0] / ext_call.return_data[0]:
        emit 0xa3fa05d1: delegate.return_data[0] / ext_call.return_data[0], delegate.return_data[0], arg2
        return 0
    if not arg1:
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0x2486228b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_aa4f1dcdAddress)
        call sub_aa4f1dcdAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args sub_7dfc099bAddress
        require ext_call.success
        emit 0x15366432: delegate.return_data[0] / ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], arg2
        return 0
    require ext_code.size(sub_7dfc099bAddress)
    call sub_7dfc099bAddress.0x110a3ec3 with:
         gas gas_remaining - 710 wei
        args address(arg2), delegate.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0xe45493d0: (delegate.return_data[0] / ext_call.return_data[0]), arg2
        return 0
    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x32a4b4c7 with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require delegate.return_code
    emit 0x3f8f630c: (delegate.return_data[0] / ext_call.return_data[0]), arg2
    return 1
}

function sub_e8eb32ef(?) {
    require ext_code.size(proposalsAddress)
    call proposalsAddress.0xc90525f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x4ea82ee6: arg1, msg.sender
    else:
        require ext_code.size(0xf2ad18168386d127a84f6da668eb87c7c31bd151)
        delegate 0xf2ad18168386d127a84f6da668eb87c7c31bd151.0x9ae17cea with:
             gas gas_remaining - 710 wei
            args arg1, msg.sender
        require delegate.return_code
        if not delegate.return_data[0]:
            emit 0x6351d3cb: arg1, msg.sender
        else:
            require ext_code.size(0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f)
            delegate 0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f.0xda19891d with:
                 gas gas_remaining - 710 wei
                args 0, uint32(arg1), arg2, arg3, msg.sender
            require delegate.return_code
            emit 0xc27db32e: delegate.return_data[0], msg.sender, arg2, arg3, delegate.return_data[32], arg1
            require ext_code.size(sub_74e2b63cAddress)
            call sub_74e2b63cAddress.getValue(bytes32 arg1) with:
                 gas gas_remaining - 710 wei
                args 'votesNeeded'
            require ext_call.success
            require ext_code.size(proposalsAddress)
            call proposalsAddress.0xb6f34aca with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require ext_code.size(sub_74e2b63cAddress)
                call sub_74e2b63cAddress.getValue(bytes32 arg1) with:
                     gas gas_remaining - 710 wei
                    args 'acceptanceThreshold'
                require ext_call.success
                require ext_code.size(proposalsAddress)
                call proposalsAddress.0xefbef75a with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                require ext_code.size(0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f)
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    delegate 0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f.0xbc28d878 with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require delegate.return_code
                    require delegate.return_data[32] <= 4
                    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
                    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x25b1c884 with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[32] << 248, address(delegate.return_data[64])
                    require delegate.return_code
                    require ext_code.size(proposalsAddress)
                    call proposalsAddress.0xb6f34aca with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        require ext_code.size(proposalsAddress)
                        call proposalsAddress.0x9909fe5c with:
                             gas gas_remaining - 710 wei
                            args arg1, idx
                        require ext_call.success
                        require ext_code.size(votesAddress)
                        call votesAddress.getVoter(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0]
                        require ext_call.success
                        require ext_code.size(votesAddress)
                        call votesAddress.0xefbef75a with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0]:
                            mem[96] = 0x25b1c88400000000000000000000000000000000000000000000000000000000
                            mem[100] = 1
                            mem[132] = address(ext_call.return_data[0])
                            require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
                            delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x25b1c884 with:
                                 gas gas_remaining - 710 wei
                                args 1, address(ext_call.return_data[0])
                        else:
                            mem[96] = 0x2254533a00000000000000000000000000000000000000000000000000000000
                            mem[100] = 0
                            mem[132] = address(ext_call.return_data[0])
                            require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
                            delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x2254533a with:
                                 gas gas_remaining - 710 wei
                                args 0, address(ext_call.return_data[0])
                        require delegate.return_code
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    emit 0xef27065a: delegate.return_data[128], delegate.return_data[0], delegate.return_data[96], arg1
                else:
                    delegate 0x71a49609ba9f789d1d338a16be8bcf1e08f10c7f.0x60c5cc3a with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require delegate.return_code
                    require delegate.return_data[32] <= 4
                    require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
                    delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x2254533a with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[32] << 248, address(delegate.return_data[64])
                    require delegate.return_code
                    require ext_code.size(proposalsAddress)
                    call proposalsAddress.0xb6f34aca with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    s = 0
                    s = 0
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        require ext_code.size(proposalsAddress)
                        call proposalsAddress.0x9909fe5c with:
                             gas gas_remaining - 710 wei
                            args arg1, idx
                        require ext_call.success
                        require ext_code.size(votesAddress)
                        call votesAddress.getVoter(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0]
                        require ext_call.success
                        require ext_code.size(votesAddress)
                        call votesAddress.0xefbef75a with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0]
                        require ext_call.success
                        if bool(ext_call.return_data[0]) != 1:
                            mem[96] = 0x25b1c88400000000000000000000000000000000000000000000000000000000
                            mem[100] = 1
                            mem[132] = address(ext_call.return_data[0])
                            require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
                            delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x25b1c884 with:
                                 gas gas_remaining - 710 wei
                                args 1, address(ext_call.return_data[0])
                        else:
                            mem[96] = 0x2254533a00000000000000000000000000000000000000000000000000000000
                            mem[100] = 0
                            mem[132] = address(ext_call.return_data[0])
                            require ext_code.size(0xfb4e894134f69a393815d7057e322b8be3661515)
                            delegate 0xfb4e894134f69a393815d7057e322b8be3661515.0x2254533a with:
                                 gas gas_remaining - 710 wei
                                args 0, address(ext_call.return_data[0])
                        require delegate.return_code
                        s = ext_call.return_data[0]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    emit 0x8fe37232: delegate.return_data[128], delegate.return_data[0], delegate.return_data[96], arg1
}



}
