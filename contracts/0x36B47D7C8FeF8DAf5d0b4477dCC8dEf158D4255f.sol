contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[41 len 1268]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 numberOfTweets;
address ownerAddress;

function getOwnerAddress() payable {
    return ownerAddress
}

function getNumberOfTweets() payable {
    return numberOfTweets
}

function adminDeleteAccount() payable {
    if ownerAddress != msg.sender:
    selfdestruct(ownerAddress)
}

function _fallback() payable {
  stop
}

function isAdmin() payable {
    return (msg.sender == ownerAddress)
}

function adminRetrieveDonations(address arg1) payable {
    if msg.sender == ownerAddress:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function tweet(string arg1) payable {
    if ownerAddress != msg.sender:
        return -1
    if arg1.length > 160:
        return -2
    stor0[stor1].field_0 = block.timestamp
    stor0[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    numberOfTweets++
    return 0
}

function getTweet(uint256 arg1) payable {
    mem[160] = stor0[arg1][1].field_0
    idx = 160
    s = 0
    while stor0[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1][1].length, data=mem[160 len stor0[arg1][1].length]), stor0[arg1].field_0
}

function getLatestTweet() payable {
    mem[160] = stor0[stor1 - 1][1].field_0
    idx = 160
    s = 0
    while stor0[stor1 - 1][1].length + 128 > idx:
        mem[idx + 32] = stor0[stor1 - 1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[stor1 - 1][1].length, data=mem[160 len stor0[stor1 - 1][1].length]), 
           stor0[stor1 - 1].field_0,
           numberOfTweets
}



}
