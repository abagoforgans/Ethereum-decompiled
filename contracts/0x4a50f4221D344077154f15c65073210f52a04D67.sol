contract main {




// =====================  Runtime code  =====================


#
#  - sub_df3ac476(?)
#
array of uint256 note;
array of uint256 author;
array of uint256 location;
array of uint256 timestamp;

function note() {
    return note[0 len note.length]
}

function location() {
    return location[0 len location.length]
}

function author() {
    return author[0 len author.length]
}

function timestamp() {
    return timestamp[0 len timestamp.length]
}

function _fallback() payable {
    revert
}



}
