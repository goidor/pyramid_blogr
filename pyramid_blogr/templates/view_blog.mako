<%inherit file="pyramid_blogr:templates/layout.mako"/>

<h1>${entry.title}</h1>
<hr/>
<p>${entry.body}</p>
<hr/>
<p>Created <strong title="${entry.created}">
    ${entry.created_in_words}</strong> ago</p>

<div id="disqus_thread"></div>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES * * */
    var disqus_shortname = 'pyramidblogr';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);

    })();
</script>

<p><a href="${request.route_url('home')}">Go Back</a> ::
    <a href="${request.route_url('blog_action', action='edit',
    _query={'id':entry.id})}">Edit Entry</a>

</p>
