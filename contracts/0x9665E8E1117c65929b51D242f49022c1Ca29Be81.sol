contract main {


// =======================  Init code  ======================


address stor9;

function _fallback() {
    stor9 = code.data[4509 len 20]
    return code.data[75 len 4422]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 validationTime;
mapping of address dip;
mapping of address scs;
mapping of address issuer;
mapping of address target;
mapping of address bullet;
mapping of uint256 targetAmount;
mapping of uint256 bulletAmount;
address dedeNetworkAddress;

function bulletAddress(address arg1) {
    return bullet[arg1]
}

function targetAmount(address arg1) {
    return targetAmount[arg1]
}

function isDeDeContract(address arg1) {
    return bool(stor0[arg1])
}

function issuer(address arg1) {
    return issuer[arg1]
}

function targetAddress(address arg1) {
    return target[arg1]
}

function dip(address arg1) {
    return dip[arg1]
}

function validationTime(address arg1) {
    return validationTime[arg1]
}

function dedeNetworkAddress() {
    return dedeNetworkAddress
}

function bulletAmount(address arg1) {
    return bulletAmount[arg1]
}

function scs(address arg1) {
    return scs[arg1]
}

function _fallback() payable {
    revert
}

function changeDedeAddress(address arg1) {
    require dedeNetworkAddress == msg.sender
    dedeNetworkAddress = arg1
}

function transfer(address arg1, address arg2) {
    require stor0[address(arg2)]
    require scs[address(arg2)] == msg.sender
    emit Transfer(issuer[address(arg2)], scs[address(arg2)], arg1, arg2);
    scs[address(arg2)] = arg1
}

function nullify(address arg1) {
    require stor0[address(arg1)]
    require block.timestamp >= validationTime[address(arg1)] + (24 * 3600)
    if dip[address(arg1)] != msg.sender:
        require scs[address(arg1)] == msg.sender
    stor0[address(arg1)] = 0
    emit Nullify(issuer[address(arg1)], dip[address(arg1)], scs[address(arg1)], arg1);
    if not target[address(arg1)]:
        if ext_code.size(arg1):
            call arg1.0xdbb72f67 with:
                 gas gas_remaining - 710 wei
                args dip[address(arg1)]
            if ext_call.success:
    else:
        if ext_code.size(target[address(arg1)]):
            call target[address(arg1)].0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg1), dip[address(arg1)], targetAmount[address(arg1)]
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(arg1):
                    call arg1.0xdbb72f67 with:
                         gas gas_remaining - 710 wei
                        args dip[address(arg1)]
                    if ext_call.success:
    revert
}

function issue(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, address arg6) payable {
    require dedeNetworkAddress == msg.sender
    require block.timestamp + 3600 < arg5
    require arg4 != arg3
    if arg3:
        create contract with 0 wei
                        code: code.data[3809 len 570], address(arg3), arg1
    else:
        require msg.value >= arg1
        if msg.value > arg1:
            call msg.sender with:
               value msg.value - arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if not arg3:
            create contract with ('param', 'arg1') wei
                            code: code.data[3809 len 570], address(arg3), arg1
        else:
            create contract with 0 wei
                            code: code.data[3809 len 570], address(arg3), arg1
    require create.new_address
    stor0[address(create.new_address)] = 1
    validationTime[address(create.new_address)] = arg5
    dip[address(create.new_address)] = msg.sender
    scs[address(create.new_address)] = msg.sender
    issuer[address(create.new_address)] = arg6
    target[address(create.new_address)] = arg3
    bullet[address(create.new_address)] = arg4
    targetAmount[address(create.new_address)] = arg1
    bulletAmount[address(create.new_address)] = arg2
    if arg3:
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(create.new_address), arg1
        require ext_call.success
        require ext_call.return_data[0]
    emit Issue(arg6, msg.sender, msg.sender, address(create.new_address));
}

function activate(address arg1) payable {
    require stor0[address(arg1)]
    require scs[address(arg1)] == msg.sender
    require block.timestamp >= validationTime[address(arg1)]
    require block.timestamp < validationTime[address(arg1)] + (24 * 3600)
    stor0[address(arg1)] = 0
    emit Activate(issuer[address(arg1)], dip[address(arg1)], scs[address(arg1)], arg1);
    if bullet[address(arg1)]:
        if ext_code.size(bullet[address(arg1)]):
            call bullet[address(arg1)].0x23b872dd with:
                 gas gas_remaining - 710 wei
                args scs[address(arg1)], dip[address(arg1)], bulletAmount[address(arg1)]
            if ext_call.success:
                require ext_call.return_data[0]
                if not target[address(arg1)]:
                    if not bullet[address(arg1)]:
                        if not bullet[address(arg1)]:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                   value bulletAmount[address(arg1)] wei
                                     gas gas_remaining - 9710 wei
                                    args dip[address(arg1)]
                                if ext_call.success:
                        else:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                   value bulletAmount[address(arg1)] wei
                                     gas gas_remaining - 9710 wei
                                    args scs[address(arg1)]
                                if ext_call.success:
                    else:
                        if not bullet[address(arg1)]:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                     gas gas_remaining - 9710 wei
                                    args dip[address(arg1)]
                                if ext_call.success:
                        else:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                     gas gas_remaining - 9710 wei
                                    args scs[address(arg1)]
                                if ext_call.success:
                else:
                    if ext_code.size(target[address(arg1)]):
                        call target[address(arg1)].0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(arg1), scs[address(arg1)], targetAmount[address(arg1)]
                        if ext_call.success:
                            require ext_call.return_data[0]
                            if not bullet[address(arg1)]:
                                if not bullet[address(arg1)]:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                           value bulletAmount[address(arg1)] wei
                                             gas gas_remaining - 9710 wei
                                            args dip[address(arg1)]
                                        if ext_call.success:
                                else:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                           value bulletAmount[address(arg1)] wei
                                             gas gas_remaining - 9710 wei
                                            args scs[address(arg1)]
                                        if ext_call.success:
                            else:
                                if not bullet[address(arg1)]:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                             gas gas_remaining - 9710 wei
                                            args dip[address(arg1)]
                                        if ext_call.success:
                                else:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                             gas gas_remaining - 9710 wei
                                            args scs[address(arg1)]
                                        if ext_call.success:
    else:
        require msg.value >= bulletAmount[address(arg1)]
        if msg.value <= bulletAmount[address(arg1)]:
            if not target[address(arg1)]:
                if not bullet[address(arg1)]:
                    if not bullet[address(arg1)]:
                        if ext_code.size(arg1):
                            call arg1.0x1c5a9d9c with:
                               value bulletAmount[address(arg1)] wei
                                 gas gas_remaining - 9710 wei
                                args dip[address(arg1)]
                            if ext_call.success:
                    else:
                        if ext_code.size(arg1):
                            call arg1.0x1c5a9d9c with:
                               value bulletAmount[address(arg1)] wei
                                 gas gas_remaining - 9710 wei
                                args scs[address(arg1)]
                            if ext_call.success:
                else:
                    if not bullet[address(arg1)]:
                        if ext_code.size(arg1):
                            call arg1.0x1c5a9d9c with:
                                 gas gas_remaining - 9710 wei
                                args dip[address(arg1)]
                            if ext_call.success:
                    else:
                        if ext_code.size(arg1):
                            call arg1.0x1c5a9d9c with:
                                 gas gas_remaining - 9710 wei
                                args scs[address(arg1)]
                            if ext_call.success:
            else:
                if ext_code.size(target[address(arg1)]):
                    call target[address(arg1)].0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(arg1), scs[address(arg1)], targetAmount[address(arg1)]
                    if ext_call.success:
                        require ext_call.return_data[0]
                        if not bullet[address(arg1)]:
                            if not bullet[address(arg1)]:
                                if ext_code.size(arg1):
                                    call arg1.0x1c5a9d9c with:
                                       value bulletAmount[address(arg1)] wei
                                         gas gas_remaining - 9710 wei
                                        args dip[address(arg1)]
                                    if ext_call.success:
                            else:
                                if ext_code.size(arg1):
                                    call arg1.0x1c5a9d9c with:
                                       value bulletAmount[address(arg1)] wei
                                         gas gas_remaining - 9710 wei
                                        args scs[address(arg1)]
                                    if ext_call.success:
                        else:
                            if not bullet[address(arg1)]:
                                if ext_code.size(arg1):
                                    call arg1.0x1c5a9d9c with:
                                         gas gas_remaining - 9710 wei
                                        args dip[address(arg1)]
                                    if ext_call.success:
                            else:
                                if ext_code.size(arg1):
                                    call arg1.0x1c5a9d9c with:
                                         gas gas_remaining - 9710 wei
                                        args scs[address(arg1)]
                                    if ext_call.success:
        else:
            call msg.sender with:
               value msg.value - bulletAmount[address(arg1)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                if not target[address(arg1)]:
                    if not bullet[address(arg1)]:
                        if not bullet[address(arg1)]:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                   value bulletAmount[address(arg1)] wei
                                     gas gas_remaining - 9710 wei
                                    args dip[address(arg1)]
                                if ext_call.success:
                        else:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                   value bulletAmount[address(arg1)] wei
                                     gas gas_remaining - 9710 wei
                                    args scs[address(arg1)]
                                if ext_call.success:
                    else:
                        if not bullet[address(arg1)]:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                     gas gas_remaining - 9710 wei
                                    args dip[address(arg1)]
                                if ext_call.success:
                        else:
                            if ext_code.size(arg1):
                                call arg1.0x1c5a9d9c with:
                                     gas gas_remaining - 9710 wei
                                    args scs[address(arg1)]
                                if ext_call.success:
                else:
                    if ext_code.size(target[address(arg1)]):
                        call target[address(arg1)].0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(arg1), scs[address(arg1)], targetAmount[address(arg1)]
                        if ext_call.success:
                            require ext_call.return_data[0]
                            if not bullet[address(arg1)]:
                                if not bullet[address(arg1)]:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                           value bulletAmount[address(arg1)] wei
                                             gas gas_remaining - 9710 wei
                                            args dip[address(arg1)]
                                        if ext_call.success:
                                else:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                           value bulletAmount[address(arg1)] wei
                                             gas gas_remaining - 9710 wei
                                            args scs[address(arg1)]
                                        if ext_call.success:
                            else:
                                if not bullet[address(arg1)]:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                             gas gas_remaining - 9710 wei
                                            args dip[address(arg1)]
                                        if ext_call.success:
                                else:
                                    if ext_code.size(arg1):
                                        call arg1.0x1c5a9d9c with:
                                             gas gas_remaining - 9710 wei
                                            args scs[address(arg1)]
                                        if ext_call.success:
    revert
}



}
