contract main {




// =====================  Runtime code  =====================


const contractBalance = eth.balance(this.address)


address sub_731bedd0Address;
uint256 coinPrice;
uint256 sub_259d295b;
address stor3;
mapping of uint256 balanceOf;

function sub_259d295b(?) {
    return sub_259d295b
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_731bedd0(?) {
    return sub_731bedd0Address
}

function coinPrice() {
    return coinPrice
}

function killContract() {
    require stor3 == msg.sender
    selfdestruct(stor3)
}

function addEther() payable {
  stop
}

function _fallback() payable {
    require stor3 == msg.sender
}

function setCoinPrice(uint256 arg1) {
    require stor3 == msg.sender
    coinPrice = arg1
}

function cashout(uint256 arg1) {
    require stor3 == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculatePrize(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg1 == 5:
        if arg2 == 5:
            if arg3 == 5:
                return (15 * coinPrice)
    if arg1 == 6:
        if arg2 == 5:
            if arg3 == 6:
                return (10 * coinPrice)
    if arg1 == 4:
        if arg2 == 4:
            if arg3 == 4:
                return (8 * coinPrice)
    if arg1 == 3:
        if arg2 == 3:
            if arg3 == 3:
                return (6 * coinPrice)
    if arg1 == 2:
        if arg2 == 2:
            if arg3 == 2:
                return (5 * coinPrice)
    if arg1 == 1:
        if arg2 == 1:
            if arg3 == 1:
                return (3 * coinPrice)
    if arg1 != arg2:
        if arg1 != arg3:
            if arg2 != arg3:
                return 0
    return sub_259d295b
}

function oneRoll() payable {
    require msg.value >= coinPrice
    emit Rolled(address(msg.sender), (sha3(block.hash(block.number - 1), msg.value) % 6) + 1, (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1, (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1);
    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 5:
        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 6:
            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                    else:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        else:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        else:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                balanceOf[address(msg.sender)] += 5 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                else:
                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        else:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                            balanceOf[address(msg.sender)] += 6 * coinPrice
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
            else:
                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        else:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                balanceOf[address(msg.sender)] += 6 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                else:
                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                        balanceOf[address(msg.sender)] += 8 * coinPrice
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
        else:
            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 5:
                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        else:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                balanceOf[address(msg.sender)] += 6 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                else:
                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                            balanceOf[address(msg.sender)] += 8 * coinPrice
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
            else:
                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 6:
                    balanceOf[address(msg.sender)] += 10 * coinPrice
                else:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                                balanceOf[address(msg.sender)] += 8 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                            balanceOf[address(msg.sender)] += 6 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
    else:
        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 5:
            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 6:
                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                        else:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                balanceOf[address(msg.sender)] += 6 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                else:
                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                            balanceOf[address(msg.sender)] += 8 * coinPrice
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
            else:
                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 5:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                                balanceOf[address(msg.sender)] += 8 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                            balanceOf[address(msg.sender)] += 6 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                else:
                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 6:
                        balanceOf[address(msg.sender)] += 10 * coinPrice
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                            balanceOf[address(msg.sender)] += 6 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                                    balanceOf[address(msg.sender)] += 8 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                                balanceOf[address(msg.sender)] += 6 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
        else:
            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 5:
                balanceOf[address(msg.sender)] += 15 * coinPrice
            else:
                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 6:
                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                        balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                            else:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                                balanceOf[address(msg.sender)] += 8 * coinPrice
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                            balanceOf[address(msg.sender)] += 6 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                else:
                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 5:
                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                            balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                else:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                        balanceOf[address(msg.sender)] += 6 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                            balanceOf[address(msg.sender)] += 6 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                                    balanceOf[address(msg.sender)] += 8 * coinPrice
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                                balanceOf[address(msg.sender)] += 6 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                    else:
                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 6:
                            balanceOf[address(msg.sender)] += 10 * coinPrice
                        else:
                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 4:
                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                    else:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                            balanceOf[address(msg.sender)] += 6 * coinPrice
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                            else:
                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 4:
                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                        else:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                    balanceOf[address(msg.sender)] += 5 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                                balanceOf[address(msg.sender)] += 6 * coinPrice
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                else:
                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 4:
                                        balanceOf[address(msg.sender)] += 8 * coinPrice
                                    else:
                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 3:
                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                            else:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                        balanceOf[address(msg.sender)] += 5 * coinPrice
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                        else:
                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 3:
                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                else:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                balanceOf[address(msg.sender)] += 3 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                            balanceOf[address(msg.sender)] += 5 * coinPrice
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                            else:
                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 3:
                                                    balanceOf[address(msg.sender)] += 6 * coinPrice
                                                else:
                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 2:
                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                    else:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                    balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                    else:
                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 2:
                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                        else:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                        balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                        else:
                                                            if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 2:
                                                                balanceOf[address(msg.sender)] += 5 * coinPrice
                                                            else:
                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 != 1:
                                                                    if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                        balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                            else:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                else:
                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != 1:
                                                                        if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                            balanceOf[address(msg.sender)] += sub_259d295b
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                    else:
                                                                        if (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1 == 1:
                                                                            balanceOf[address(msg.sender)] += 3 * coinPrice
                                                                        else:
                                                                            if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1:
                                                                                balanceOf[address(msg.sender)] += sub_259d295b
                                                                            else:
                                                                                if (sha3(block.hash(block.number - 1), msg.value) % 6) + 1 == (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                    balanceOf[address(msg.sender)] += sub_259d295b
                                                                                else:
                                                                                    if (sha3(block.hash(block.number - 1), msg.value + 10) % 6) + 1 != (sha3(block.hash(block.number - 1), msg.value + 20) % 6) + 1:
                                                                                    else:
                                                                                        balanceOf[address(msg.sender)] += sub_259d295b
}



}
