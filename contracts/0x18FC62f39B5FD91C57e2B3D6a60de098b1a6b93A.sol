contract main {


// =======================  Init code  ======================


address stor0;
address stor10;

function _fallback() payable {
    stor10 = 0xe2fb6529ef566a080e6d23de0bd351311087d567
    require not msg.value
    stor0 = msg.sender
    return code.data[97 len 2457]
}



// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
address owner;
mapping of uint256 received;
mapping of uint256 balances;
array of address stopList;
mapping of uint256 stop;
uint256 stopAddressesTotal;
array of address receivers;
uint256 receivedCount;
uint256 total;
uint256 receivedTotal;
address tokenAddress;

function receivedTotal() {
    return receivedTotal
}

function balances(address arg1) {
    return balances[arg1]
}

function index() {
    return receivedCount
}

function total() {
    return total
}

function receiversCount() {
    return receivers.length
}

function owner() {
    return owner
}

function stopList(uint256 arg1) {
    require arg1 < stopList.length
    return stopList[arg1]
}

function stopAddresses(address arg1) {
    return stop[arg1]
}

function receivedCount() {
    return receivedCount
}

function receivers(uint256 arg1) {
    require arg1 < receivers.length
    return receivers[arg1]
}

function stopAddressesTotal() {
    return stopAddressesTotal
}

function received(address arg1) {
    return received[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function retreive() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeBalance(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balances[address(arg1)] > 0
    total -= balances[address(arg1)]
    balances[address(arg1)] = arg2
    total += arg2
}

function retrieveTokens(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function retrieveCurrentTokensToOwner() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function addReceivers(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                if not balances[mem[(32 * idx) + 140 len 20]]:
                    receivers.length++
                    if not receivers.length <= receivers.length + 1:
                        s = receivers.length + sha3(6) + 1
                        while sha3(6) + receivers.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    receivers[receivers.length] = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                balances[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                total += mem[(32 * idx) + (32 * arg1.length) + 160]
            else:
                if not stop[mem[(32 * idx) + 140 len 20]]:
                    stopList.length++
                    if not stopList.length <= stopList.length + 1:
                        s = stopList.length + sha3(3) + 1
                        while sha3(3) + stopList.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stopList[stopList.length] = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                stop[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                stopAddressesTotal += mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}



}
