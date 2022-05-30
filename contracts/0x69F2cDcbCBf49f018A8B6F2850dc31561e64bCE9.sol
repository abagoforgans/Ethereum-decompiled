contract main {




// =====================  Runtime code  =====================


const resourcesPerHouse = 3


uint8 stor0;
address godAddress; offset 8
address ethExchangeContractAddress;
address resourceExchangeContractAddress;
address housesContractAddress;
address roadsContractAddress;
address bronzeContractAddress;
address cornContractAddress;
address goldContractAddress;
address oilContractAddress;
address oreContractAddress;
address steelContractAddress;
address uraniumContractAddress;
address woodContractAddress;

function oreContract() {
    return oreContractAddress
}

function uraniumContract() {
    return uraniumContractAddress
}

function resourceExchangeContract() {
    return resourceExchangeContractAddress
}

function steelContract() {
    return steelContractAddress
}

function oilContract() {
    return oilContractAddress
}

function bronzeContract() {
    return bronzeContractAddress
}

function roadsContract() {
    return roadsContractAddress
}

function isPaused() {
    return bool(stor0)
}

function god() {
    return godAddress
}

function woodContract() {
    return woodContractAddress
}

function housesContract() {
    return housesContractAddress
}

function ethExchangeContract() {
    return ethExchangeContractAddress
}

function cornContract() {
    return cornContractAddress
}

function goldContract() {
    return goldContractAddress
}

function _fallback() payable {
    revert
}

function godPause() {
    require msg.sender == godAddress
    stor0 = 1
    emit GodPaused()
}

function godChangeGod(address arg1) {
    require msg.sender == godAddress
    godAddress = arg1
}

function godUnpause() {
    require msg.sender == godAddress
    stor0 = 0
    emit GodUnpaused()
}

function godSetRoadsContract(address arg1) {
    require msg.sender == godAddress
    roadsContractAddress = arg1
}

function godSetHousesContract(address arg1) {
    require msg.sender == godAddress
    housesContractAddress = arg1
}

function godSetEthExchangeContract(address arg1) {
    require msg.sender == godAddress
    ethExchangeContractAddress = arg1
}

function godSetResourceExchangeContract(address arg1) {
    require msg.sender == godAddress
    resourceExchangeContractAddress = arg1
}

function resourceType(uint256 arg1, uint256 arg2) {
    if not arg2 xor arg1 + 7777777 % 97:
        return 7
    if not arg2 xor arg1 + 7777777 % 29:
        return 4
    if not arg2 xor arg1 + 7777777 % 23:
        return 6
    if not arg2 xor arg1 + 7777777 % 17:
        return 3
    if not arg2 xor arg1 + 7777777 % 11:
        return 1
    if not arg2 xor arg1 + 7777777 % 5:
        return 8
    if bool(arg2 xor arg1 + 7777777):
        return 5
    return 2
}

function burnRoadCosts(uint256 arg1, address arg2) {
    require msg.sender == roadsContractAddress
    require ext_code.size(cornContractAddress)
    call cornContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oreContractAddress)
    call oreContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function contractFor(uint8 arg1) {
    require arg1 <= 8
    require arg1
    require arg1 <= 8
    if 1 == arg1:
        return bronzeContractAddress
    require arg1 <= 8
    if 2 == arg1:
        return cornContractAddress
    require arg1 <= 8
    if 3 == arg1:
        return goldContractAddress
    require arg1 <= 8
    if 4 == arg1:
        return oilContractAddress
    require arg1 <= 8
    if 5 == arg1:
        return oreContractAddress
    require arg1 <= 8
    if 6 == arg1:
        return steelContractAddress
    require arg1 <= 8
    if 7 == arg1:
        return uraniumContractAddress
    require arg1 <= 8
    if arg1 != 8:
        return 0
    return woodContractAddress
}

function burnHouseCosts(uint256 arg1, address arg2) {
    require msg.sender == housesContractAddress
    require ext_code.size(cornContractAddress)
    call cornContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 2 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oreContractAddress)
    call oreContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 2 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(woodContractAddress)
    call woodContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lookupResourcePoints(address arg1) {
    require ext_code.size(bronzeContractAddress)
    call bronzeContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(goldContractAddress)
    call goldContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(steelContractAddress)
    call steelContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oilContractAddress)
    call oilContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uraniumContractAddress)
    call uraniumContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (64 * ext_call.return_data[0])
}

function burnUpgradeCosts(uint8 arg1, address arg2) {
    require msg.sender == housesContractAddress
    require 5 > arg1
    require msg.sender == housesContractAddress
    require ext_code.size(cornContractAddress)
    call cornContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oreContractAddress)
    call oreContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(woodContractAddress)
    call woodContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        require ext_code.size(bronzeContractAddress)
        call bronzeContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 1 == arg1:
            require ext_code.size(goldContractAddress)
            call goldContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == arg1:
                require ext_code.size(steelContractAddress)
                call steelContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == arg1:
                    require ext_code.size(oilContractAddress)
                    call oilContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == arg1:
                        require ext_code.size(uraniumContractAddress)
                        call uraniumContractAddress.interfaceBurnTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function exchangeThawTokens(uint8 arg1, address arg2, uint256 arg3) {
    if ethExchangeContractAddress != msg.sender:
        require msg.sender == resourceExchangeContractAddress
    require arg1 <= 8
    require arg1
    require arg1 <= 8
    if 1 == arg1:
        require ext_code.size(bronzeContractAddress)
        call bronzeContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        require arg1 <= 8
        if 2 == arg1:
            require ext_code.size(cornContractAddress)
            call cornContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            require arg1 <= 8
            if 3 == arg1:
                require ext_code.size(goldContractAddress)
                call goldContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
            else:
                require arg1 <= 8
                if 4 == arg1:
                    require ext_code.size(oilContractAddress)
                    call oilContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                else:
                    require arg1 <= 8
                    if 5 == arg1:
                        require ext_code.size(oreContractAddress)
                        call oreContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                    else:
                        require arg1 <= 8
                        if 6 == arg1:
                            require ext_code.size(steelContractAddress)
                            call steelContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                        else:
                            require arg1 <= 8
                            if 7 == arg1:
                                require ext_code.size(uraniumContractAddress)
                                call uraniumContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                            else:
                                require arg1 <= 8
                                if arg1 != 8:
                                    require ext_code.size(0)
                                    call 0x0.interfaceThawTokens(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                else:
                                    require ext_code.size(woodContractAddress)
                                    call woodContractAddress.interfaceThawTokens(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exchangeFreezeTokens(uint8 arg1, address arg2, uint256 arg3) {
    if ethExchangeContractAddress != msg.sender:
        require msg.sender == resourceExchangeContractAddress
    require arg1 <= 8
    require arg1
    require arg1 <= 8
    if 1 == arg1:
        require ext_code.size(bronzeContractAddress)
        call bronzeContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        require arg1 <= 8
        if 2 == arg1:
            require ext_code.size(cornContractAddress)
            call cornContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            require arg1 <= 8
            if 3 == arg1:
                require ext_code.size(goldContractAddress)
                call goldContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
            else:
                require arg1 <= 8
                if 4 == arg1:
                    require ext_code.size(oilContractAddress)
                    call oilContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                else:
                    require arg1 <= 8
                    if 5 == arg1:
                        require ext_code.size(oreContractAddress)
                        call oreContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                    else:
                        require arg1 <= 8
                        if 6 == arg1:
                            require ext_code.size(steelContractAddress)
                            call steelContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                        else:
                            require arg1 <= 8
                            if 7 == arg1:
                                require ext_code.size(uraniumContractAddress)
                                call uraniumContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                            else:
                                require arg1 <= 8
                                if arg1 != 8:
                                    require ext_code.size(0)
                                    call 0x0.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
                                else:
                                    require ext_code.size(woodContractAddress)
                                    call woodContractAddress.interfaceFreezeTokens(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exchangeTransfer(uint8 arg1, address arg2, address arg3, uint256 arg4) {
    if ethExchangeContractAddress != msg.sender:
        require msg.sender == resourceExchangeContractAddress
    require arg1 <= 8
    require arg1
    require arg1 <= 8
    if 1 == arg1:
        require ext_code.size(bronzeContractAddress)
        call bronzeContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg3), arg4
    else:
        require arg1 <= 8
        if 2 == arg1:
            require ext_code.size(cornContractAddress)
            call cornContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), arg4
        else:
            require arg1 <= 8
            if 3 == arg1:
                require ext_code.size(goldContractAddress)
                call goldContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg4
            else:
                require arg1 <= 8
                if 4 == arg1:
                    require ext_code.size(oilContractAddress)
                    call oilContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), address(arg3), arg4
                else:
                    require arg1 <= 8
                    if 5 == arg1:
                        require ext_code.size(oreContractAddress)
                        call oreContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4
                    else:
                        require arg1 <= 8
                        if 6 == arg1:
                            require ext_code.size(steelContractAddress)
                            call steelContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), address(arg3), arg4
                        else:
                            require arg1 <= 8
                            if 7 == arg1:
                                require ext_code.size(uraniumContractAddress)
                                call uraniumContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), address(arg3), arg4
                            else:
                                require arg1 <= 8
                                if arg1 != 8:
                                    require ext_code.size(0)
                                    call 0x0.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), address(arg3), arg4
                                else:
                                    require ext_code.size(woodContractAddress)
                                    call woodContractAddress.interfaceTransfer(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exchangeFrozenTransfer(uint8 arg1, address arg2, address arg3, uint256 arg4) {
    if ethExchangeContractAddress != msg.sender:
        require msg.sender == resourceExchangeContractAddress
    require arg1 <= 8
    require arg1
    require arg1 <= 8
    if 1 == arg1:
        require ext_code.size(bronzeContractAddress)
        call bronzeContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg3), arg4
    else:
        require arg1 <= 8
        if 2 == arg1:
            require ext_code.size(cornContractAddress)
            call cornContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), arg4
        else:
            require arg1 <= 8
            if 3 == arg1:
                require ext_code.size(goldContractAddress)
                call goldContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg4
            else:
                require arg1 <= 8
                if 4 == arg1:
                    require ext_code.size(oilContractAddress)
                    call oilContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), address(arg3), arg4
                else:
                    require arg1 <= 8
                    if 5 == arg1:
                        require ext_code.size(oreContractAddress)
                        call oreContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4
                    else:
                        require arg1 <= 8
                        if 6 == arg1:
                            require ext_code.size(steelContractAddress)
                            call steelContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), address(arg3), arg4
                        else:
                            require arg1 <= 8
                            if 7 == arg1:
                                require ext_code.size(uraniumContractAddress)
                                call uraniumContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), address(arg3), arg4
                            else:
                                require arg1 <= 8
                                if arg1 != 8:
                                    require ext_code.size(0)
                                    call 0x0.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), address(arg3), arg4
                                else:
                                    require ext_code.size(woodContractAddress)
                                    call woodContractAddress.interfaceFrozenTransfer(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeResources(address arg1, uint256 arg2, uint256 arg3, uint8 arg4) {
    require msg.sender == housesContractAddress
    if not arg3 - 1 xor arg2 + 7777776 % 97:
        require ext_code.size(uraniumContractAddress)
        call uraniumContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 3 * uint8(arg4 + 1)
    else:
        if not arg3 - 1 xor arg2 + 7777776 % 29:
            require ext_code.size(oilContractAddress)
            call oilContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 3 * uint8(arg4 + 1)
        else:
            if not arg3 - 1 xor arg2 + 7777776 % 23:
                require ext_code.size(steelContractAddress)
                call steelContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 3 * uint8(arg4 + 1)
            else:
                if not arg3 - 1 xor arg2 + 7777776 % 17:
                    require ext_code.size(goldContractAddress)
                    call goldContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 3 * uint8(arg4 + 1)
                else:
                    if not arg3 - 1 xor arg2 + 7777776 % 11:
                        require ext_code.size(bronzeContractAddress)
                        call bronzeContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 3 * uint8(arg4 + 1)
                    else:
                        if not arg3 - 1 xor arg2 + 7777776 % 5:
                            require ext_code.size(woodContractAddress)
                            call woodContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 3 * uint8(arg4 + 1)
                        else:
                            if bool(arg3 - 1 xor arg2 + 7777776):
                                require ext_code.size(oreContractAddress)
                                call oreContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
                            else:
                                require ext_code.size(cornContractAddress)
                                call cornContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3 - 1 xor arg2 + 7777777 % 97:
        require ext_code.size(uraniumContractAddress)
        call uraniumContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 3 * uint8(arg4 + 1)
    else:
        if not arg3 - 1 xor arg2 + 7777777 % 29:
            require ext_code.size(oilContractAddress)
            call oilContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 3 * uint8(arg4 + 1)
        else:
            if not arg3 - 1 xor arg2 + 7777777 % 23:
                require ext_code.size(steelContractAddress)
                call steelContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 3 * uint8(arg4 + 1)
            else:
                if not arg3 - 1 xor arg2 + 7777777 % 17:
                    require ext_code.size(goldContractAddress)
                    call goldContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 3 * uint8(arg4 + 1)
                else:
                    if not arg3 - 1 xor arg2 + 7777777 % 11:
                        require ext_code.size(bronzeContractAddress)
                        call bronzeContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 3 * uint8(arg4 + 1)
                    else:
                        if not arg3 - 1 xor arg2 + 7777777 % 5:
                            require ext_code.size(woodContractAddress)
                            call woodContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 3 * uint8(arg4 + 1)
                        else:
                            if bool(arg3 - 1 xor arg2 + 7777777):
                                require ext_code.size(oreContractAddress)
                                call oreContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
                            else:
                                require ext_code.size(cornContractAddress)
                                call cornContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3 xor arg2 + 7777777 % 97:
        require ext_code.size(uraniumContractAddress)
        call uraniumContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 3 * uint8(arg4 + 1)
    else:
        if not arg3 xor arg2 + 7777777 % 29:
            require ext_code.size(oilContractAddress)
            call oilContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 3 * uint8(arg4 + 1)
        else:
            if not arg3 xor arg2 + 7777777 % 23:
                require ext_code.size(steelContractAddress)
                call steelContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 3 * uint8(arg4 + 1)
            else:
                if not arg3 xor arg2 + 7777777 % 17:
                    require ext_code.size(goldContractAddress)
                    call goldContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 3 * uint8(arg4 + 1)
                else:
                    if not arg3 xor arg2 + 7777777 % 11:
                        require ext_code.size(bronzeContractAddress)
                        call bronzeContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 3 * uint8(arg4 + 1)
                    else:
                        if not arg3 xor arg2 + 7777777 % 5:
                            require ext_code.size(woodContractAddress)
                            call woodContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 3 * uint8(arg4 + 1)
                        else:
                            if bool(arg3 xor arg2 + 7777777):
                                require ext_code.size(oreContractAddress)
                                call oreContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
                            else:
                                require ext_code.size(cornContractAddress)
                                call cornContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3 xor arg2 + 7777776 % 97:
        require ext_code.size(uraniumContractAddress)
        call uraniumContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 3 * uint8(arg4 + 1)
    else:
        if not arg3 xor arg2 + 7777776 % 29:
            require ext_code.size(oilContractAddress)
            call oilContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 3 * uint8(arg4 + 1)
        else:
            if not arg3 xor arg2 + 7777776 % 23:
                require ext_code.size(steelContractAddress)
                call steelContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 3 * uint8(arg4 + 1)
            else:
                if not arg3 xor arg2 + 7777776 % 17:
                    require ext_code.size(goldContractAddress)
                    call goldContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 3 * uint8(arg4 + 1)
                else:
                    if not arg3 xor arg2 + 7777776 % 11:
                        require ext_code.size(bronzeContractAddress)
                        call bronzeContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 3 * uint8(arg4 + 1)
                    else:
                        if not arg3 xor arg2 + 7777776 % 5:
                            require ext_code.size(woodContractAddress)
                            call woodContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 3 * uint8(arg4 + 1)
                        else:
                            if bool(arg3 xor arg2 + 7777776):
                                require ext_code.size(oreContractAddress)
                                call oreContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
                            else:
                                require ext_code.size(cornContractAddress)
                                call cornContractAddress.interfaceMintTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 3 * uint8(arg4 + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
