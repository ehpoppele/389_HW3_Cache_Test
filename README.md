## 389_HW3_Cache_Test
Eli Poppele and Jon Takagi

We used Catch2 as our testing library. We created a global test cache, and we reset it at the end of each `SECTION` in our testing. In order to test how the cache uses the hash function in section 5, we specify a hash function at the beginning. Our test file is `test_cache_lib.cc`, and can be compiled for our current code with the makefile. All tests pass on our own code.

### Set and Get
|Name             |Description    |Status|
|-----------------|---------------|------|
|Nonentry Get     |`get` on a key not in the cache returns `nullptr`|Pass  |
|Normal Set/Get   |`get` on a value that was previously `set` returns the same value|Pass  |
|Overwrite and Get|`set` on a key already in the cache changes the value returned by `get`|Pass  |

### Size and Capacity
|Name             |Description    |Status|
|-----------------|---------------|------|
|Total Size |`set` correctly updates `space_used` when adding new keys|Pass|
|Get Size|`get` puts the size of the value into the return parameter |Pass|
|Rejection| A cache with no evictor refuses to `set` items that would bring it over `maxmem` |Pass|
|Overwrite Size| `set` correctly updates `space_used` when overwriting existing keys |Pass|

### Delete
|Name             |Description    |Status|
|-----------------|---------------|------|
|Delete and Get | `get` returns `nullptr` if the key has been `del`eted |Pass|
|Delete and Size| `del` updates `space_used` |Pass|

### Reset
|Name             |Description    |Status|
|-----------------|---------------|------|
|Reset and Get | `reset` removes keys from the cache | Pass|
|Reset and Size | `reset` sets the size to 0 |Pass|

### Hash Functions
|Name             |Description    |Status|
|-----------------|---------------|------|
|Hash Use | The specified hash function is used | Pass|

### Fifo Evictor
|Name             |Description    |Status|
|-----------------|---------------|------|
|Evict Returns First| The FIFO Evictor evicts the first key added to the cache |Pass|
|Evict Removes| Having evicted the first key added to the cache, the evictor will evict the second key added, and so on |Pass|
|Evict nothing is ""| Evictor returns the string `""` when it cannot find a candidate to evict |Pass|


## `squinkums`
Weihang and Liam used a `Null_evictor` class in their implementation of the cache_lib. I had a fun time wrestling with the compiler until I realized how to include & link the files for the Null_evictor.

Afterwards, their `cache_lib.cc` failed to compile. The result is attached in `squinkums_compilation_errors.txt`. I have communicated this result to the authors.

## `InternetUnexplorered`
Aaron and Alex didn't do anything weird. I simply named their files as `InternetUnexplorer_`, changed the includes and everything compiled smoothly. Their code passed all our tests.### Set and Get
|Name               |Description    |Status|
|-------------------|---------------|------|
|Nonentry Get       | Pass|
|Normal Set/Get     | Pass|
|Overwrite and Get  | Pass|
|Total Size         | Pass|
|Get Size           | Pass|
|Rejection          | Pass|
|Overwrite Size     | Pass|
|Delete and Get     | Pass|
|Delete and Size    | Pass|
|Reset and Get      | Pass|
|Reset and Size     | Pass|
|Hash Use           | Pass|
|Evict Returns First| Pass|
|Evict Removes      | Pass|
|Evict nothing is ""| Pass|
